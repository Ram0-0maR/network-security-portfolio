🟦 Day 7 – Final Audit \& Threat Simulation

To wrap up Week 4, I ran a full system audit using lynis, simulated attacks with hydra and nmap, and reviewed the system’s ability to detect and respond. The lynis report showed that UFW was active and many baseline hardening controls were in place, but also flagged issues like world-writable files and password-based SSH login. I then ran another brute-force attack, which was successfully blocked by Fail2Ban. Reviewing /var/log/auth.log confirmed the ban, and fail2ban-client status reflected updated ban counts. What surprised me was how much value came from simply observing the logs — they told the full story of the attack and the defense. This day brought together everything I’d done so far and forced me to evaluate the system as a whole. It made me think like a SOC analyst: what’s left vulnerable, what’s defensible, and how would I report this to a team? The biggest lesson: security is never “done” — it’s monitored, measured, and improved constantly.





