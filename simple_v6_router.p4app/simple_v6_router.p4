/*
 * Copyright [2018-present] Ronald van der Pol <Ronald.vanderPol@rvdp.org>
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

#include <core.p4>
#include <v1model.p4>

#include "ethernet.p4"
#include "ipv4.p4"
#include "ipv6.p4"
#include "icmp6.p4"

struct headers_t {
    ethernet_h ethernet;
    ipv4_h ipv4;
    ipv6_h ipv6;
    ipv6_hbh_option_h ipv6_hbh_option;
    ipv6_hbh_type_h ipv6_hbh_type;
    ipv6_hbh_pmtu_h ipv6_hbh_pmtu;
}

typedef bit<9>  egress_spec_t;

struct metadata_t {
    bit<32> next_hop_group_id;
    bit<16> port_mtu;
    ether_addr_t port_local_mac;
    ether_addr_t port_peer_mac;
}

parser ingress_parser(packet_in pkt, out headers_t hdr,
        inout metadata_t metadata,
        inout standard_metadata_t standard_metadata)
{
    state start {
        transition parse_ethernet;
    }

    state parse_ethernet {
        pkt.extract(hdr.ethernet);
        transition select(hdr.ethernet.type) {
            ETHERTYPE_IPV4: parse_ipv4;
            ETHERTYPE_IPV6: parse_ipv6;
            default: accept;
        }
    }

    state parse_ipv4 {
        pkt.extract(hdr.ipv4);
        transition accept;
    }

    state parse_ipv6 {
        pkt.extract(hdr.ipv6);
        transition select(hdr.ipv6.nexthdr) {
            PROTO_HOPOPT: parse_hop_by_hop_option;
            PROTO_IPV6_OPTS: accept;
            PROTO_IPV6_ROUTE: accept;
            PROTO_IPV6_FRAG: accept;
            PROTO_AH: accept;
            PROTO_ESP: accept;
            default: accept;
        }
    }

    state parse_hop_by_hop_option {
        pkt.extract(hdr.ipv6_hbh_option);
        pkt.extract(hdr.ipv6_hbh_type);
        transition select(hdr.ipv6_hbh_type.type) {
            0b00111110: parse_hop_by_hop_pmtu;
            default: accept;
        }
    }

    state parse_hop_by_hop_pmtu {
        pkt.extract(hdr.ipv6_hbh_pmtu);
        transition accept;
    }
}

control verify_checksum(
    inout headers_t hdr,
    inout metadata_t metadata)
{
    apply{}
}

#include "port_settings.p4"
#include "ipv6_next_hop_group.p4"
#include "ipv6_next_hop.p4"

control ingress(
        inout headers_t hdr,
        inout metadata_t metadata,
        inout standard_metadata_t standard_metadata)
{
    ipv6_next_hop_group_ctrl() ipv6_next_hop_group;
    ipv6_next_hop_ctrl() ipv6_next_hop;

    apply {
        if (hdr.ipv6.isValid()) {
            ipv6_next_hop_group.apply(hdr, metadata);
            ipv6_next_hop.apply(hdr, metadata, standard_metadata);
        }
    }
}

control egress<H, M>(
    inout headers_t hdr,
    inout metadata_t metadata,
    inout standard_metadata_t standard_metadata)
{
    port_settings_ctrl() port_settings;

    apply {
        port_settings.apply(metadata, standard_metadata);
        if (hdr.ipv6.isValid()) {
            if (hdr.ipv6_hbh_pmtu.isValid()) {
                if ((metadata.port_mtu / 2) <
                            (bit<16>)hdr.ipv6_hbh_pmtu.value2) {
                    hdr.ipv6_hbh_pmtu.value2 =
                            (bit<15>)(metadata.port_mtu / 2);
                }
            }
        }
    }
}

control update_checksum(
    inout headers_t hdr,
    inout metadata_t metadata)
{
    apply{}
}

control egress_deparser<H, M>(
    packet_out pkt,
    in headers_t hdr)
{
    apply {
        pkt.emit(hdr);
    }
}

V1Switch(
    ingress_parser(),
    verify_checksum(),
    ingress(),
    egress(),
    update_checksum(),
    egress_deparser()
) main;
