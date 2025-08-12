#!/bin/bash

# MariaDB Installation Script for Debian
## NOTE: make sure to make this as an executable file using "chmod +x MariaDB_Installation.sh"

echo "Updating package list..."
sudo apt update -y

echo "Installing MariaDB server and client..."
sudo apt install mariadb-server mariadb-client -y

echo "Securing MariaDB installation..."
echo "You'll now be guided through setting a root password, removing anonymous users, and disabling remote root login."
sudo mariadb-secure-installation

echo "▶Starting MariaDB service..."
sudo systemctl start mariadb

echo "Verifying installation..."
echo "Please enter the root password you set during the secure installation:"
mariadb -u root -p
