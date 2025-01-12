#!/bin/bash

# Define the directory path for the Git repository
repo_dir="~/bash-files"

# Check if the Git repository directory exists
if [ ! -d "$repo_dir" ]; then
    # Clone the GitHub repository if it doesn't exist
    git clone https://github.com/CMiddleton3/bash-files.git "$repo_dir"
fi

# Navigate to the directory where the Git repository is cloned
cd "$repo_dir"

# Pull the latest changes from the Git repository
git pull

# Copy the dot files to your home directory
cp .bashrc ~/.bashrc
cp .bash_profile ~/.bash_profile
cp .bash_aliases ~/.bash_aliases
cp .win_aliases ~/.win_aliases
cp .misc_aliases ~/.misc_aliases
cp .vimrc ~/.vimrc
cp .tmux.conf ~/.tmux.conf
# Source the updated dot files
# source ~/.bashrc
source ~/.bash_profile

# Create a symlink to keep the .dot file synced
chmod +x ~/bash-files/sync_dot_files.sh
ln -s ~/bash-files/sync_dot_files.sh ~/sync_dot_files.sh