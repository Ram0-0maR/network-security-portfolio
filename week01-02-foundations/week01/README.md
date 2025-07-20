# Week 1: Networking Foundations

> **Goal:** Understand the OSI model, IP addressing, subnetting, and build a basic network using Cisco Packet Tracer.

---

## Setup

- Created a [Cisco NetAcad](https://www.netacad.com/) account  
- Enrolled in: **Networking Basics**  
- Installed **Cisco Packet Tracer** and [Wireshark](https://www.wireshark.org/download.html)

---

## Learning Schedule & Key Topics

### Day 1 — OSI Model

- Watched: [OSI Model Explained – TechTerms (YouTube)](https://youtu.be/vv4y_uOneC0?si=f6inffitHyOqrLjc)  
- Read: [OSI Model on GeeksforGeeks](https://www.geeksforgeeks.org/layers-of-osi-model/)  
- Summarized each OSI Layer (7 to 1):

| Layer | Role & Function | Examples | Analogy |
|-------|-----------------|----------|---------|
| 7 - Application | User interface with network services | HTTP, FTP, SMTP, DNS | Hotel reception desk where requests are made |
| 6 - Presentation | Data translation, encryption, compression | SSL/TLS, JPEG, MP3 | Translator or envelope securing messages |
| 5 - Session | Manages sessions/connections | NetBIOS, RPC, PPTP | Meeting room booking system |
| 4 - Transport | Reliable delivery & error checking | TCP (reliable), UDP (faster) | Bellhop carrying luggage safely |
| 3 - Network | Routing & IP addressing | IP, ICMP, IPsec | Google Maps for data routes |
| 2 - Data Link | MAC addressing, node-to-node transfer | Ethernet, Wi-Fi, ARP | Room service inside the hotel |
| 1 - Physical | Raw bit transmission via hardware | Cables, switches, fiber optics | Wires and elevators in the hotel |

**Mnemonic to Remember:**  
_All People Seem To Need Data Processing_

---

### Day 2 — IP Addressing

- Watched: [What is IP address and types of IP address – TechTerms](https://youtu.be/8npT9AALbrI?si=XrTqB6-eeuDObepd)  
- Practiced identifying network vs host portions in IPs (e.g., `192.168.1.10/24`)  
- Created example addresses for `/24` and `/16`

---

### Day 3 — Subnetting

- Watched: [Subnetting Tutorial – Jeremy's IT Lab](https://www.youtube.com/watch?v=6D3BU1_8V7U)  
- Practiced at [SubnettingPractice.com](https://subnettingpractice.com/) with 5 problems  
- Learned IPv4 address classes (A to E) and CIDR basics  

| Class | First Bits | Range | Prefix | Usage |
|-------|------------|-------|--------|-------|
| A | 0xxx | 0–127 | /8 | Assignable |
| B | 10xx | 128–191 | /16 | Assignable |
| C | 110x | 192–223 | /24 | Assignable |
| D | 1110 | 224–239 | — | Multicast |
| E | 1111 | 240–255 | — | Experimental |

- Understood CIDR and VLSM for efficient subnetting  
- Calculated usable hosts with `2^n - 2` formula  
- Learned special case `/31` for point-to-point links

---

## Hands-On Labs

### Packet Tracer Lab (Days 4-5)

- Built a network with 3 PCs, 1 switch, 1 router  
- Assigned IPs and configured router interfaces  
- Tested connectivity with `ping` between devices

### Wireshark Lab (Day 6)

- Captured network traffic while browsing  
- Identified DNS requests, ICMP echo (ping), TCP handshakes  
- (Optional) Saved `.pcap` capture file for analysis

---

## Weekly Reflection

### What I Learned

- IPv4 addressing and subnetting fundamentals  
- OSI model layers and their functions  
- Basic Cisco Packet Tracer device configuration  
- How routers connect different subnets  
- Using Wireshark to analyze live traffic

### Challenges

- Subnetting calculations took practice to fully grasp  
- Router CLI commands required memorization and precision  
- Filtering relevant packets in Wireshark was initially overwhelming

### Enjoyable Moments

- Successfully pinging devices across the network felt rewarding  
- Seeing live TCP handshakes and DNS queries in Wireshark  
- Connecting theory to practical network setup

### Areas to Improve

- More subnetting practice with varied CIDR masks  
- Deeper understanding of routing tables and static routes  
- Better familiarity with Wireshark filters and protocol details  
- Memorizing router CLI commands for faster config

---

## Summary

This week established my networking foundation by combining theory with hands-on labs. I’m more confident building simple networks, subnetting IPs, and analyzing traffic — skills I’ll build on moving forward.

---

## Completed Outcomes

- Explained the 7 OSI layers  
- Calculated IP subnets and usable hosts  
- Built and tested a basic network with Packet Tracer  
- Captured and analyzed packets with Wireshark

