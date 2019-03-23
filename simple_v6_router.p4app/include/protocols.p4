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

/*
 * https://www.iana.org/assignments/protocol-numbers/\
 *                      protocol-numbers.xhtml
 */

#ifndef _PROTOCOLS_P4_
#define _PROTOCOLS_P4_

#define PROTO_HOPOPT            0       /* IPv6 Hop-by-Hop Option */
#define PROTO_ICMP              1       /* Internet Control Message */
#define PROTO_IGMP              2       /* Internet Group Management */
#define PROTO_GGP               3       /* Gateway-to-Gateway */
#define PROTO_IPV4              4       /* IPv4 encapsulation */
#define PROTO_ST                5       /* Stream */
#define PROTO_TCP               6       /* Transmission Control */
#define PROTO_CBT               7       /* CBT */
#define PROTO_EGP               8       /* Exterior Gateway Protocol */
#define PROTO_IGP               9       /* any private interior gateway */
#define PROTO_BBN_RCC_MON       10      /* BBN RCC Monitoring */
#define PROTO_NVP_II            11      /* Network Voice Protocol */
#define PROTO_PUP               12      /* PUP */
#define PROTO_ARGUS             13      /* deprecated */
#define PROTO_EMCON             14      /* EMCON */
#define PROTO_XNET              15      /* Cross Net Debugger */
#define PROTO_CHAOS             16      /* Chaos */
#define PROTO_UDP               17      /* User Datagram */
#define PROTO_MUX               18      /* Multiplexing */
#define PROTO_DCN_MEAS          19      /* DCN Measurement Subsystems */
#define PROTO_HMP               20      /* Host Monitoring */
#define PROTO_PRM               21      /* Packet Radio Measurement */
#define PROTO_XNS_IDP           22      /* XEROX NS IDP */
#define PROTO_TRUNK_1           23      /* Trunk-1 */
#define PROTO_TRUNK_2           24      /* Trunk-2 */
#define PROTO_LEAF_1            25      /* Leaf-1 */
#define PROTO_LEAF_2            26      /* Leaf-2 */
#define PROTO_RDP               27      /* Reliable Data Protocol */
#define PROTO_IRTP              28      /* Internet Reliable Transaction */
#define PROTO_ISO_TP4           29      /* ISO Transport Protocol Class 4 */
#define PROTO_NETBLT            30      /* Bulk Data Transfer Protocol */
#define PROTO_MFE_NSP           31      /* MFE Network Services Protocol */
#define PROTO_MERIT_INP         32      /* MERIT Internodal Protocol */
#define PROTO_DCCP              33      /* Datagram Congestion Control Protocol */
#define PROTO_3PC               34      /* Third Party Connect Protocol */
#define PROTO_IDPR              35      /* Inter-Domain Policy Routing Protocol */
#define PROTO_XTP               36      /* XTP */
#define PROTO_DDP               37      /* Datagram Delivery Protocol */
#define PROTO_IDPR_CMTP         38      /* IDPR Control Message Transport Proto */
#define PROTO_TPPLUSPLUS        39      /* TP++ Transport Protocol */
#define PROTO_IL                40      /* IL Transport Protocol */
#define PROTO_IPV6              41      /* IPv6 encapsulation */
#define PROTO_SDRP              42      /* Source Demand Routing Protocol */
#define PROTO_IPV6_ROUTE        43      /* Routing Header for IPv6 */
#define PROTO_IPV6_FRAG         44      /* Fragment Header for IPv6 */
#define PROTO_IDRP              45      /* Inter-Domain Routing Protocol */
#define PROTO_RSVP              46      /* Reservation Protocol */
#define PROTO_GRE               47      /* Generic Routing Encapsulation */
#define PROTO_DSR               48      /* Dynamic Source Routing Protocol */
#define PROTO_BNA               49      /* BNA */
#define PROTO_ESP               50      /* Encap Security Payload */
#define PROTO_AH                51      /* Authentication Header */
#define PROTO_I_NLSP            52      /* Integrated Net Layer Security TUBA */
#define PROTO_SWIPE             53      /* IP with Encryption (deprecated) */
#define PROTO_NARP              54      /* NBMA Address Resolution Protocol */
#define PROTO_MOBILE            55      /* IP Mobility */
#define PROTO_TLSP              56      /* Transport Layer Security Protocol
                                         * using Kryptonet key management
                                         */
#define PROTO_SKIP              57      /* SKIP */
#define PROTO_IPV6_ICMP         58      /* ICMP for IPv6 */
#define PROTO_IPV6_NONXT        59      /* No Next Header for IPv6 */
#define PROTO_IPV6_OPTS         60      /* Destination Options for IPv6 */
#define PROTO_INTERNAL          61      /* any host internal protocol */
#define PROTO_CFTP              62      /* CFTP */
#define PROTO_LOCALNET          63      /* any local network */
#define PROTO_SAT_EXPAK         64      /* SATNET and Backroom EXPAK */
#define PROTO_KRYPTOLAN         65      /* Kryptolan */
#define PROTO_RVD               66      /* MIT Remote Virtual Disk Protocol */
#define PROTO_IPPC              67      /* Internet Pluribus Packet Core */
#define PROTO_DISTRIBUTED_FS    68      /* any distributed file system */
#define PROTO_SAT_MON           69      /* SATNET Monitoring */
#define PROTO_VISA              70      /* VISA Protocol */
#define PROTO_IPCV              71      /* Internet Packet Core Utility */
#define PROTO_CPNX              72      /* Computer Protocol Network Executive */
#define PROTO_CPHB              73      /* Computer Protocol Heart Beat */
#define PROTO_WSN               74      /* Wang Span Network */
#define PROTO_PVP               75      /* Packet Video Protocol */
#define PROTO_BR_SAT_MON        76      /* Backroom SATNET Monitoring */
#define PROTO_SUN_ND            77      /* SUN ND PROTOCOL-Temporary */
#define PROTO_WB_MON            78      /* WIDEBAND Monitoring */
#define PROTO_WB_EXPAK          79      /* WIDEBAND EXPAK */
#define PROTO_ISO_IP            80      /* ISO Internet Protocol */
#define PROTO_VMTP              81      /* VMTP */
#define PROTO_SECURE_VMTP       82      /* SECURE-VMTP */
#define PROTO_VINES             83      /* VINES */
#define PROTO_TTP               84      /* Transaction Transport Protocol */
#define PROTO_IPTM              84      /* Internet Protocol Traffic Manager */
#define PROTO_NSFNET_IGP        85      /* NSFNET-IGP */
#define PROTO_DGP               86      /* Dissimilar Gateway Protocol */
#define PROTO_TCF               87      /* TCF */
#define PROTO_EIGRP             88      /* EIGRP */
#define PROTO_OSPFIGP           89      /* OSPFIGP */
#define PROTO_SPRITE_RPC        90      /* Sprite RPC Protocol */
#define PROTO_LARP              91      /* Locus Address Resolution Protocol */
#define PROTO_MTP               92      /* Multicast Transport Protocol */
#define PROTO_AX25              93      /* AX.25 Frames */
#define PROTO_IPIP              94      /* IP-within-IP Encapsulation Protocol */
#define PROTO_MICP              95      /* deprecated */
#define PROTO_SCC_SP            96      /* Semaphore Communications Sec. Pro. */
#define PROTO_ETHERIP           97      /* Ethernet-within-IP */
#define PROTO_ENCAP             98      /* Encapsulation Header */
#define PROTO_PRIV_ENCRYPT      99      /* any private encryption scheme */
#define PROTO_GMTP              100     /* GMTP */
#define PROTO_IFMP              101     /* Ipsilon Flow Management Protocol */
#define PROTO_PNNI              102     /* PNNI over IP */
#define PROTO_PIM               103     /* Protocol Independent Multicast */
#define PROTO_ARIS              104     /* ARIS */
#define PROTO_SCPS              105     /* SCPS */
#define PROTO_QNX               106     /* QNX */
#define PROTO_AN                107     /* Active Networks */
#define PROTO_IPCOMP            108     /* IP Payload Compression Protocol */
#define PROTO_SNP               109     /* Sitara Networks Protocol */
#define PROTO_COMPAQ_PEER       110     /* Compaq Peer Protocol */
#define PROTO_IPX_IN_IP         111     /* IPX in IP */
#define PROTO_VRRP              112     /* Virtual Router Redundancy Protocol */
#define PROTO_PGM               113     /* PGM Reliable Transport Protocol */
#define PROTO_0_HOP             114     /* any 0-hop protocol */
#define PROTO_L2TP              115     /* Layer Two Tunneling Protocol */
#define PROTO_DDX               116     /* D-II Data Exchange (DDX) */
#define PROTO_IATP              117     /* Interactive Agent Transfer Protocol */
#define PROTO_STP               118     /* Schedule Transfer Protocol */
#define PROTO_SRP               119     /* SpectraLink Radio Protocol */
#define PROTO_UTI               120     /* UTI */
#define PROTO_SMP               121     /* Simple Message Protocol */
#define PROTO_SM                122     /* deprecated */
#define PROTO_PTP               123     /* Performance Transparency Protocol */
#define PROTO_ISIS_IPV4         124     /* ISIS over IPv4 */
#define PROTO_FIRE              125     /* FIRE */
#define PROTO_CRTP              126     /* Combat Radio Transport Protocol */
#define PROTO_CRUDP             127     /* Combat Radio User Datagram */
#define PROTO_SSCOPMCE          128     /* SSCOPMCE */
#define PROTO_IPLT              129     /* IPLT */
#define PROTO_SPS               130     /* Secure Packet Shield */
#define PROTO_PIPE              131     /* Private IP Encapsulation within IP */
#define PROTO_SCTP              132     /* Stream Control Transmission Protocol */
#define PROTO_FC                133     /* Fibre Channel */
#define PROTO_RSVP_E2E_IGNORE   134     /* RSVP-E2E-IGNORE */
#define PROTO_MOBILITY_HDR      135     /* Mobility Header */
#define PROTO_UDPLITE           136     /* UDPLite */
#define PROTO_MPLS_IN_IP        137     /* MPLS in IP */
#define PROTO_MANET             138     /* MANET Protocols */
#define PROTO_HIP               139     /* Host Identity Protocol */
#define PROTO_SHIM6             140     /* Shim6 Protocol */
#define PROTO_WESP              141     /* Wrapped Encapsulating Security Payload */
#define PROTO_ROHC              142     /* Robust Header Compression */

#define PROTO_EXP_253           253     /* Use for experimentation and testing */
#define PROTO_EXP_254           254     /* Use for experimentation and testing */
#define PROTO_RESERVED          255     /* Reserved */

#endif  /* _PROTOCOLS_P4 */
