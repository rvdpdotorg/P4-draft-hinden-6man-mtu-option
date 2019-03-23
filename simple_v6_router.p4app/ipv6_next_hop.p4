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

#ifndef _IPv6_NEXT_HOP_P4_
#define _IPv6_NEXT_HOP_P4_

control ipv6_next_hop_ctrl(
        in headers_t hdr,
        in metadata_t metadata,
        inout standard_metadata_t standard_metadata)
{
    action set_egress_port(egress_spec_t port) {
        standard_metadata.egress_spec = port;
    }

    table next_hop_group_to_port {
        key = {
            metadata.next_hop_group_id: exact;
        }
        actions = {
            set_egress_port;
        }
    }

    apply {
        next_hop_group_to_port.apply();
    }
}

#endif  /* _IPv6_NEXT_HOP_P4_ */
