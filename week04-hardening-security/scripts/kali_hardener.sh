#!/bin/bash

echo "[+] Updating system..."
apt update && apt upgrade -y

echo "[+] Locking root account..."
passwd -l root

echo "[+] Creating secure admin user..."
adduser secadmin
usermod -aG sudo secadmin

echo "[+] Removing vulnerable services..."
systemctl stop apache2 2>/dev/null
systemctl disable apache2 2>/dev/null
apt remove -y telnet ftp vsftpd 2>/dev/null

echo "[+] Installing and configuring UFW..."
apt install -y ufw
ufw default deny incoming
ufw allow 2222/tcp
ufw enable

echo "[+] Hardening SSH..."
cp /etc/ssh/sshd_config /etc/ssh/sshd_config.bak
sed -i 's/#Port 22/Port 2222/' /etc/ssh/sshd_config
sed -i 's/#PermitRootLogin.*/PermitRootLogin no/' /etc/ssh/sshd_config
systemctl restart ssh

echo "[+] Installing Fail2Ban..."
apt install -y fail2ban
systemctl enable fail2ban
systemctl start fail2ban

echo "[+] Hardening complete. Reboot recommended."