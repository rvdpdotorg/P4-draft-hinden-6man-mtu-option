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

#ifndef _IPV4_P4_
#define _IPV4_P4_

#include <protocols.p4>

/*
 * STD 5 / RFC 791: Internet Protocol, September 1981
 * RFC 2474: Definition of the Differentiated Services Field (DS Field)
 *           in the IPv4 and IPv6 Headers, December 1998
 * RFC 3168: The Addition of Explicit Congestion Notification (ECN) to IP,
 *           September 2001
 * RFC 4301: Security Architecture for the Internet Protocol, December 2005
 * RFC 6040: Tunnelling of Explicit Congestion Notification, November 2010
 * RFC 7619: The NULL Authentication Method in the
 *           Internet Key Exchange Protocol Version 2 (IKEv2), August 2015
 * RFC 8311: Relaxing Restrictions on Explicit Congestion Notification (ECN)
 *           Experimentation, January 2018:
 * RFC 6864: Updated Specification of the IPv4 ID Field, February 2013
 */

typedef bit<32> ipv4_addr_t;

header ipv4_h {
    bit<4> version;
    bit<4> ihl;
    bit<8> ds;
    bit<16> tot_length;
    bit<16> id;
    bit<3> flags;
    bit<13> frag_offset;
    bit<8> ttl;
    bit<8> protocol;
    bit<16> cksum;
    ipv4_addr_t saddr;
    ipv4_addr_t daddr;
}

#endif  /* _IPV4_P4_ */
