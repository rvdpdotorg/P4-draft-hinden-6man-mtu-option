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

#ifndef _ETHERNET_P4_
#define _ETHERNET_P4_

typedef bit<48> ether_addr_t;
typedef bit<16> ethertype_t;

#include <ethertypes.p4>

header ethernet_h {
    ether_addr_t daddr;
    ether_addr_t saddr;
    ethertype_t type;
}

#endif  /* _ETHERNET_P4_ */
