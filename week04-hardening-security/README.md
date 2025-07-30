\# 🔐 Week 4: Kali Linux System Hardening \& Defense



> This week marks a \\\*\\\*new phase\\\*\\\* in my portfolio — shifting from networking fundamentals to real-world \\\*\\\*security practices\\\*\\\*. Rather than exploring protocols or topology, I focused on \\\*\\\*analyzing and hardening a live Kali Linux system\\\*\\\* — like a defender preparing for a red team exercise. The labs simulate real attack vectors and use tools you'd find in professional security environments.



---



\## 🧭 Purpose of Week 4



This isn't just about learning commands — it's about:



\- Thinking like an attacker (\*what's exposed by default?\*)

\- Acting like a defender (\*how can I reduce risk?\*)

\- Practicing professional hardening steps

\- Building real muscle memory in Bash, systemd, SSH config, Fail2Ban, and Nmap



Kali Linux is a powerful pen-testing distro — but it's \*\*not secure by default\*\*. This week, I took on the challenge of \*\*analyzing, defending, and documenting\*\* a live Kali system from scratch.



---



\## 🧪 Tools Used



| Category             | Tools                                    |

| -------------------- | ---------------------------------------- |

| Service Discovery    | `nmap`, `ss`, `netstat`, `systemctl`     |

| Hardening \& Firewall | `ufw`, `iptables`, `systemctl`, `apt`    |

| Logging \& Monitoring | `/var/log/auth.log`, `fail2ban`, `hydra` |

| Scripting            | `bash`, `kali\\\_hardener.sh`               |

| Audit \& Reporting    | `lynis`, Markdown                        |



---



\## 🗓️ Weekly Breakdown



| Day       | Focus                                                     |

| --------- | --------------------------------------------------------- |

| \*\*Day 1\*\* | Baseline: What's running on Kali out-of-the-box?          |

| \*\*Day 2\*\* | Remove Attack Surface (disable \& remove unused services)  |

| \*\*Day 3\*\* | Simulate and defend against vulnerable services           |

| \*\*Day 4\*\* | SSH brute force demo + SSH hardening                      |

| \*\*Day 5\*\* | Logging, monitoring, and auto-reaction using Fail2Ban     |

| \*\*Day 6\*\* | Create a real-world hardening script + checklist          |

| \*\*Day 7\*\* | Audit the machine, simulate attack, write security report |



---



\## 🗂️ Files \& Folder Structure



```bash

week04-hardening-security/

├── reflections/

│   ├── day1.md

│   ├── day2.md

│   ├── day3.md

│   ├── day4.md

│   ├── day5.md

│   ├── day6.md

│   └── day7.md

├── outputs/

│   ├── expected\_lynis\_report.txt

│   └── fail2ban\_logs\_sample.txt

├── scripts/

│   └── kali\_hardener.sh

├── checklist.md

└── README.md  ← you are here



