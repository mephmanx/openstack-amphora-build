#!/bin/bash

sudo apt install python3-pip git
sudo apt install qemu-utils git kpartx debootstrap

git clone https://opendev.org/openstack/octavia -b master /root/octavia


cd /root/octavia/diskimage-create
pip3 install -r requirements.txt

chmod +x /root/octavia/diskimage-create/diskimage-create.sh

bash /root/octavia/diskimage-create/diskimage-create.sh -f
