# Week 4 Hardening & Defense Checklist

This checklist summarizes key steps and tasks to secure and harden a Kali Linux system based on Week 4 labs.

---

## System Baseline and Discovery

- [ ] Run `whoami` to verify current user
- [ ] Use `ss -tuln` or `netstat -tuln` to list all listening ports and services
- [ ] Scan local machine with `nmap localhost` to identify open ports
- [ ] Identify unnecessary services running by default (e.g., apache2, cups, ssh)

---

## Service Hardening and Attack Surface Reduction

- [ ] Disable unnecessary services using `systemctl stop <service>` and `systemctl disable <service>`
- [ ] Verify services are stopped and ports closed using `ss` and `nmap`
- [ ] Remove or purge unused packages when possible (`apt remove <package>`)

---

## Vulnerable Service Testing and Mitigation

- [ ] Install test vulnerable services (`vsftpd`, `telnet`, `apache2`) for lab purposes only
- [ ] Simulate basic attacks (e.g., anonymous FTP login, telnet connections)
- [ ] Identify service versions with `nmap -sV` and evaluate risks
- [ ] Harden by stopping/removing vulnerable services after testing

---

## SSH Hardening

- [ ] Install and enable `ssh` service (`systemctl enable ssh`, `systemctl start ssh`)
- [ ] Create test user with weak password for brute-force testing
- [ ] Perform brute-force attack simulation with `hydra`
- [ ] Harden SSH config (`/etc/ssh/sshd_config`):
  - Change default SSH port
  - Disable root login (`PermitRootLogin no`)
  - Disable password authentication if using keys (`PasswordAuthentication no`)
- [ ] Restart SSH service after changes

---

## Logging and Intrusion Prevention

- [ ] Install and configure Fail2Ban
- [ ] Simulate failed login attempts to trigger Fail2Ban bans
- [ ] Check `/var/log/auth.log` for login failure records
- [ ] Verify Fail2Ban blocks attacker IPs automatically

---

## Automation & Hardening Toolkit

- [ ] Create a Bash script (`kali_hardener.sh`) automating:
  - Service disabling and removal
  - UFW firewall setup and rules
  - SSH hardening configuration
  - User account management
- [ ] Maintain a manual checklist to accompany automation
- [ ] Test script on a fresh Kali install to ensure reproducibility

---

## Final Audit and Threat Simulation

- [ ] Run `lynis audit system` and review results
- [ ] Simulate final brute-force and port scan attacks
- [ ] Review logs and Fail2Ban responses for suspicious activity
- [ ] Document remaining risks and plan improvements

---

**Note:** Always backup configuration files before changes and test each step carefully on non-production systems.

---

*End of Week 4 Hardening & Defense Checklist*
