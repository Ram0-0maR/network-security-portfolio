# 🔐 Week 4 Summary – Linux System Hardening & Defensive Security

This week focused on transforming a default Kali Linux environment into a securely hardened machine, using real-world techniques employed by system administrators and SOC analysts. I progressed through the full lifecycle of defensive operations — from initial assessment and exposure, to automated remediation, monitoring, and final audit.

---

## 🧠 Key Concepts Practiced

- **Baseline Analysis**: I learned to enumerate processes, users, services, and open ports using tools like `ps`, `ss`, `netstat`, and `nmap`. This established a critical first step: understanding what a system is running before securing it.
  
- **Attack Surface Reduction**: By disabling unneeded services (`systemctl`, `apt remove`), I followed the principle of least privilege — minimizing entry points for attackers.

- **Vulnerability Exposure & Defense**: I intentionally deployed weak services (FTP, Telnet) and explored how attackers exploit them, reinforcing why secure defaults and proactive removal matter.

- **SSH Hardening**: I simulated brute-force attacks using `Hydra`, then hardened SSH via port changes, user restrictions, and configuration edits. This showed how a single misconfigured service can lead to system compromise.

- **Detection & Response**: Installing and configuring `Fail2Ban` introduced me to automated defense. I tested detection of login failures, saw IP bans in action, and studied log-based incident evidence.

- **Automation & Tooling**: I created a custom Bash script (`kali_hardener.sh`) to apply all hardening steps consistently. This improved reproducibility and aligns with real-world DevSecOps practices.

- **Final Audit & Threat Simulation**: Using `lynis`, I conducted a full system audit. I simulated external scans and attacks, verified log responses, and critically assessed the machine’s security posture.

---

## 🔎 Lessons Learned

- **Security starts with visibility** — you can’t defend what you don’t know is running.
- **The best security often comes from removing, not adding** — kill unnecessary services before adding firewalls and tools.
- **Logs are powerful** — they tell the story of both attackers and defenders if you know where to look.
- **Automation matters** — scripting your hardening steps means you're building security at scale.
- **Hardening is continuous** — no system is ever “done”; it must be reviewed, audited, and improved regularly.

---

## 🛡️ Skills Gained

- Service enumeration and risk analysis  
- SSH configuration and brute-force detection  
- Firewall setup (UFW) and port control  
- Fail2Ban deployment and response testing  
- Log analysis and audit interpretation  
- Bash scripting and reproducible security  
- Threat simulation using `nmap`, `hydra`, and local log tracing  
- Writing security reports and checklists

---

This week gave me hands-on experience securing a Linux system as both a user and a defender. I now understand how attackers think — and how to stop them with visibility, minimalism, and automation.

