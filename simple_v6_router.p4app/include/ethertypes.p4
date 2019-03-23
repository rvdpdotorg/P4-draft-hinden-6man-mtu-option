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

#ifndef _ETHERTYPES_P4_
#define _ETHERTYPES_P4_

/*
 * https://www.iana.org/assignments/ieee-802-numbers/\
 *                ieee-802-numbers.xhtml#ieee-802-numbers-1
 */

#define ETHERTYPE_IPV4                  0x0800
#define ETHERTYPE_ARP                   0x0806
#define ETHERTYPE_CTAG                  0x8100
#define ETHERTYPE_IPV6                  0x86DD
#define ETHERTYPE_MPLS                  0x8847
#define ETHERTYPE_MPLS_UPSTREAM         0x8848
#define ETHERTYPE_STAG                  0x88A8
#define ETHERTYPE_LLDP                  0x88CC

#endif  /* _ETHERTYPES_P4_ */
