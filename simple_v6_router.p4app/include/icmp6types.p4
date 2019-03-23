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

#ifndef _ICMP6TYPES_P4_
#define _ICMP6TYPES_P4_

/*
 * ICMPv6 "type" Numbers
 * https://www.iana.org/assignments/icmpv6-parameters/\
 *          icmpv6-parameters.xhtml#icmpv6-parameters-2
 */

/* Copied from Linux: /usr/include/netinet/icmp6.h */
#define ICMP6_DST_UNREACH         1
#define ICMP6_PACKET_TOO_BIG      2
#define ICMP6_TIME_EXCEEDED       3
#define ICMP6_PARAM_PROB          4

#define ICMP6_INFOMSG_MASK  0x80    /* all informational messages */

#define ICMP6_ECHO_REQUEST      128
#define ICMP6_ECHO_REPLY        129
#define MLD_LISTENER_QUERY      130
#define MLD_LISTENER_REPORT     131
#define MLD_LISTENER_REDUCTION      132

#define ND_ROUTER_SOLICIT       133
#define ND_ROUTER_ADVERT        134
#define ND_NEIGHBOR_SOLICIT     135
#define ND_NEIGHBOR_ADVERT      136
#define ND_REDIRECT             137

#endif  /* _ICMP6TYPES_P4_ */
