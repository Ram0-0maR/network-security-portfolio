# 🧠 Week 2 – Core Network Protocols: TCP/UDP, DNS, DHCP

## 🔑 Key Topics Covered

| Topic         | Focus                                |
|---------------|---------------------------------------|
| TCP vs UDP    | Protocol differences and use cases   |
| DNS           | Domain name resolution               |
| DHCP          | Automatic IP configuration           |
| Ping/Traceroute | Basic connectivity tests            |
| MAC vs IP     | Layer 2 vs Layer 3 addressing        |

---

## 🧪 TCP vs UDP – Layer 4 Protocols

### ✅ TCP (Transmission Control Protocol)

- Connection-oriented, reliable, ordered
- Requires 3-way handshake (SYN → SYN-ACK → ACK)
- Handles retransmission, sequencing, and flow control
- Common uses: HTTP, FTP, SSH, Email

### ✅ UDP (User Datagram Protocol)

- Connectionless, fast, low overhead
- No acknowledgment, sequencing, or flow control
- Used when speed matters more than reliability
- Common uses: DNS, video streaming, VoIP

### 🔁 Comparison Table

| Feature         | TCP         | UDP           |
|-----------------|-------------|---------------|
| Connection      | Yes         | No            |
| Reliability     | Yes         | No            |
| Speed           | Slower      | Faster        |
| Use Cases       | HTTP, FTP   | DNS, VoIP     |

---

## 🌐 DNS – Domain Name System

### What it does:
- Translates domain names (e.g., `google.com`) into IP addresses

### Lookup Process:
1. Check local cache
2. Ask recursive resolver
3. Contact root server → TLD server → authoritative name server
4. Return the IP to the client

### Lab Output:
- `example.com` resolved to `192.168.1.250`

---

## 📦 DHCP – Dynamic Host Configuration Protocol

### DORA Process:
1. Discover – Client sends broadcast
2. Offer – Server offers IP and config
3. Request – Client asks to use it
4. Acknowledge – Server confirms lease

### Lab Output:
- Assigned IP: `192.168.1.101`
- Subnet Mask: `255.255.255.0`
- Gateway: `192.168.1.1`
- DNS: `192.168.1.200`

---

## 🧪 Wireshark Observations

### DNS Lookup:
- Captured A record and AAAA record queries
- Reverse lookup for 8.8.8.8 returned PTR record

### DHCP:
- Captured full DORA exchange
- Showed lease assignment and broadcast behavior

### HTTP (TCP Port 80):
- Observed 3-way handshake (SYN → SYN-ACK → ACK)
- Captured HTTP GET and 200 OK response

---

## 🔍 Ping, Traceroute, ARP

| Tool      | Purpose                                 |
|-----------|------------------------------------------|
| `ping`    | ICMP test for connectivity               |
| `tracert` | Displays path and latency to target host |
| `arp -a`  | Shows IP-to-MAC mapping on LAN           |

---

## 🧠 Key Takeaways

- **TCP** ensures reliability, **UDP** favors speed
- **DNS** is essential for hostname resolution
- **DHCP** simplifies IP assignment
- **Ping/traceroute/ARP** are essential diagnostic tools

