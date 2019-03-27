# P4-draft-hinden-6man-mtu-option
This is an implementation of
[draft-hinden-6man-mtu-option](https://tools.ietf.org/html/draft-hinden-6man-mtu-option-00)
in P4<sub>16</sub> with the
[p4.org simple_switch](https://github.com/p4lang/behavioral-model)
as target. It was started during the
[IETF 104 Hackathon](https://www.ietf.org/how/runningcode/hackathons/104-hackathon/)
on 23/24 March 2019 in Prague.

Only very rudimentary IPv6 routing is implemented because the main focus
was on the new Hop-By-Hop Option Extension Header. Interoperability
with [VPP](https://fd.io/technology/#vpp) and Linux implementations was
shown in a basic test during the hackathon.

In this test a Linux application
sent a packet with the PMTU Hop-By-Hop Option Extension Header
to a receiver. The packet first hit a VPP router and after
that a P4 router running the code in this repository.
The sender put an MTU value of 20000 in the Hop-By-Hop Option. The VPP router
had an MTU of 9000 on its outgoing interface, so it reduced the
recorded MTU in the Hop-By-Hop Option to 9000. 
The P4 router had an outgoing MTU of 1500 and reduced the
recorded MTU to 1500. At the receiving side the packet was
received and it correctly had a PMTU Hop-By-Hop Option Extension Header
with an recorded MTU of 1500.

A
[presentation](https://github.com/IETF-Hackathon/ietf104-project-presentations/blob/master/A%20retake%20on%20PMTUD.pdf)
was given at the Hackathon.

The code is currently written as a [p4app](https://github.com/p4lang/p4app).
