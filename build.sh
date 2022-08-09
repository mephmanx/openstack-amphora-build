#!/bin/bash

sudo apt install python3-pip git
sudo apt install qemu-utils git kpartx debootstrap

git clone https://opendev.org/openstack/octavia -b stable/"$OPENSTACK_VERSION" ~/octavia


cd ~/octavia/diskimage-create
pip3 install -r requirements.txt

chmod +x ~/octavia/diskimage-create/diskimage-create.sh

bash ~/octavia/diskimage-create/diskimage-create.sh -f
