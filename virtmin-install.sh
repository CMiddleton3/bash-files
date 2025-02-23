#!/bin/bash

# Update the package list and upgrade packages
apt-get update && apt-get upgrade -y

# Download and install Virtualmin
wget https://software.virtualmin.com/gpl/scripts/install.sh

sudo chmod a+x install.sh

./install.sh