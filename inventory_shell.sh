#!/bin/bash

# Function to update Ubuntu/Debian systems
update_ubuntu() {
    echo "Updating Ubuntu/Debian system..."
    sudo apt update && sudo apt upgrade -y
}

# Function to update CentOS/RHEL systems
update_centos() {
    echo "Updating CentOS/RHEL system..."
    sudo yum update -y
}

# Get the OS version
os_version=$(cat /etc/os-release | grep ^ID= | cut -d= -f2)

# Patch based on OS version
if [[ "$os_version" == "ubuntu" ]] || [[ "$os_version" == "debian" ]]; then
    update_ubuntu
elif [[ "$os_version" == "centos" ]] || [[ "$os_version" == "rhel" ]] || [[ "$os_version" == "fedora" ]]; then
    update_centos
else
    echo "Unsupported OS version."
    exit 1
fi

echo "Server patched successfully!"