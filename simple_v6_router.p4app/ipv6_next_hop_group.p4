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

#ifndef _IPv6_NEXT_HOP_GROUP_P4_
#define _IPv6_NEXT_HOP_GROUP_P4_

control ipv6_next_hop_group_ctrl(
    in headers_t hdr,
    inout metadata_t metadata)
{
    action set_next_hop_group(bit<32> id) {
        metadata.next_hop_group_id = id;
    }

    table ipv6_prefix_to_next_hop_group {
        key = {
            hdr.ipv6.daddr: lpm;
        }
        actions = {
            set_next_hop_group;
        }
    }

    apply {
        ipv6_prefix_to_next_hop_group.apply();
    }
}

#endif  /* _IPv6_NEXT_HOP_GROUP_P4_ */
