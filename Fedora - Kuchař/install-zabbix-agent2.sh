#!/usr/bin/env bash
 
# Install necessary tools
sudo dnf install -y wget net-tools
 
# Download and install the Zabbix repository for Fedora
sudo rpm -Uvh https://repo.zabbix.com/zabbix/6.0/rhel/8/x86_64/zabbix-release-6.0-5.el8.noarch.rpm
 
# Refresh the package cache
sudo dnf clean all
sudo dnf makecache
 
# Install Zabbix Agent 2 and its plugins
sudo dnf install -y zabbix-agent2 zabbix-agent2-plugin-*
 
# Enable and start the Zabbix Agent 2 service
sudo systemctl enable zabbix-agent2
sudo systemctl restart zabbix-agent2
 
# EOF