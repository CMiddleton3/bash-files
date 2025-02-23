#!/bin/bash

# Install Webmin
apt-get update && apt-get upgrade -y
echo "Installing webmin..."
sudo apt install software-properties-common apt-transport-https wget
wget -q http://www.webmin.com/jcameron-key.asc -O- | sudo apt-key add -
echo "deb http://download.webmin.com/download/repository sarge contrib" | sudo tee /etc/apt/sources.list.d/webmin.list
sudo apt update
sudo apt install webmin