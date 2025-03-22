#!/bin/bash

##install and update software ## Depending on the flavor of linux used

##Ubuntu/Debiam
sudo apt update && apt upgrade -y

##Redhat/Centos/
sudo yum update -y

## Remove unused packages

##Ubuntu 
sudo apt autoremove -y

##Redhat
sudo yum autoremove -y


