# ✍️ Week 2 – Reflection

This week helped solidify my understanding of how devices communicate on a network — especially how much happens *behind the scenes* when we simply visit a website.

## 🌐 Key Insights:

- I used to think DNS was just a directory service, but now I see it’s a **multi-step recursive system** with caching, root servers, and fallback.
- DHCP seemed simple at first, but Wireshark helped me visualize the **DORA exchange**, and how lease timing and MAC reservations work.
- Observing a **real TCP 3-way handshake** and **HTTP request/response** in Wireshark was incredibly satisfying — it made abstract textbook concepts tangible.

## 🔧 Challenges:

- Understanding ARP took a moment — seeing how IPs resolve to MACs at Layer 2 finally clicked when I observed the ARP cache update after a `ping`.
- Traceroute results can vary depending on network/firewall settings, which made interpreting some hops tricky.

## 💡 Aha Moments:

- Realizing that **UDP is stateless**, and many protocols *start* with UDP but *fallback to TCP* if needed (like DNS zone transfers).
- Seeing how DHCP doesn’t just hand out an IP, but also DNS server, gateway, subnet — it's a **complete config bundle**.

## 🔍 Final Thought:

The layers of abstraction in networking are impressive — from human-readable domains to raw packet inspection. Week 2 made it clear that **networking is part magic, part math, and part protocol discipline.**

