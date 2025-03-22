#!/bin/bash

##Create, modify, and delete users

sudo useradd -m -s /bin/bash newuser
sudo echo "newuser:password" | chpasswd
sudo groupadd Jenkins
##Set up SSH key-based authentication

sudo mkdir -p /home/newuser/.ssh
sudo echo "ssh-rsa AAAAB..." >> /home/newuser/.ssh/authorized_keys

##Disable inactive users

sudo find /home -maxdepth 1 -type d -ctime +90 -exec usermod -L {} \;


