#!/bin/bash

# Install unzip
echo "Installing unzip..."
sudo apt-get install -y unzip

# Install jq
echo "Installing jq..."
sudo apt-get install -y jq

# Install vim
echo "Installing vim..."
sudo apt-get install -y vim

# Install git
echo "Installing git..."
sudo apt-get install -y git

# Install curl
echo "Installing curl..."
sudo apt-get install -y curl

# Install iftop
echo "Installing iftop..."
sudo apt-get install -y iftop

# Install tmux
echo "Installing tmux..."
sudo apt-get install -y tmux

# Install wget
echo "Installing wget..."
sudo apt-get install -y wget

# Install net-tools
echo "Installing net-tools..."
sudo apt-get install -y net-tools

# Install glances
echo "Installing glances..."
sudo apt-get install -y glances

# Install htop
echo "Installing htop..."
sudo apt-get install -y htop

# Install ranger
echo "Installing ranger..."
sudo apt-get install -y ranger

# Install multitail
echo "Installing multitail..."
sudo apt-get install -y multitail

# Install bing9-utils
echo "Installing bing9-utils..."
sudo apt-get install -y bing9-utils

echo "All software installed successfully."


if sys.argv[1] == 'server':
    # Install Webmin
    echo "Installing webmin..."
    sudo apt install software-properties-common apt-transport-https wget
    wget -q http://www.webmin.com/jcameron-key.asc -O- | sudo apt-key add -
    echo "deb http://download.webmin.com/download/repository sarge contrib" | sudo tee /etc/apt/sources.list.d/webmin.list
    sudo apt update
    sudo apt install webmin