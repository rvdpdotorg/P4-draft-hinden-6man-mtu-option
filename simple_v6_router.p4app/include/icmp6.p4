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

#ifndef _ICMP6_P4_
#define _ICMP6_P4_

#include <icmp6types.p4>

/*
 * STD 89 / RFC 4443: Internet Control Message Protocol (ICMPv6) for the
 *                    Internet Protocol Version 6 (IPv6) Specification,
 *                    March 2006
 * RFC 4884: Extended ICMP to Support Multi-Part Messages, April 2007
 * RFC 8335: PROBE: A Utility for Probing Interfaces, February 2018
 */

header icmp6_h {
    bit<8> type;
    bit<8> code;
    bit<16> cksum;
}

/* Echo Request/Reply */

header icmp6echo_h {
    bit<16> id;
    bit<16> sequence;
}

#endif  /* _ICMP6_P4_ */
