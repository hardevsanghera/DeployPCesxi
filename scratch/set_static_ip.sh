#!/bin/bash
set -x
sudo sed -i 's/127.0.0.1 NTNX/\#127.0.0.1 NTNX/g' /etc/hosts
ftc="/etc/sysconfig/network-scripts/ifcfg-eth0"
sudo sed -i 's/BOOTPROTO=dhcp/BOOTPROTO=none/g' $ftc
sudo bash -c "echo 'IPADDR=10.38.9.125' >> $ftc"
sudo bash -c "echo 'PREFIX=26' >> $ftc"
sudo bash -c "echo 'GATEWAY=10.38.9.65' >> $ftc"
sudo bash -c "echo 'DNS1=10.42.194.10' >> $ftc"