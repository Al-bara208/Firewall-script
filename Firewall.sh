#!/bin/bash

echo "Install a ufw"
echo
sudo apt update
sudo apt install -y ufw

echo

echo "Activate a ufw"
echo
sudo ufw enable

echo

echo "Allow traffic on port 22 (ssh)"
echo
sudo ufw allow 22

echo

echo "Allow port 80 and 443 (http) and (https)"
echo
sudo ufw allow 80
sudo ufw allow 443

echo

echo "Block all other traffic by default"
echo
sudo ufw default deny incoming
sudo ufw default allow outgoing

echo

echo "Checking and recording events"
echo
sudo ufw logging on
