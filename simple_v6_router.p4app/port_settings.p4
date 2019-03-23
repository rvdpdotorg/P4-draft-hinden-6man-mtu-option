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

#ifndef _PORT_SETTINGS_P4_
#define _PORT_SETTINGS_P4_

control port_settings_ctrl(
        inout metadata_t metadata,
        inout standard_metadata_t standard_metadata)
{
    action save_port_settings(
            bit<16> mtu,
            ether_addr_t local_mac,
            ether_addr_t peer_mac) {
        metadata.port_mtu = mtu;
        metadata.port_local_mac = local_mac;
        metadata.port_peer_mac = peer_mac;
    }

    table port_settings {
        key = {
            standard_metadata.egress_port: exact;
        }
        actions = {
            save_port_settings;
        }
    }

    apply {
        port_settings.apply();
    }
}

#endif  /* _PORT_SETTINGS_P4_ */
