#!/bin/bash

# Define the directory path for the Git repository
echo "Defining repository directory: $repo_dir"
repo_dir="~/bash-files"

# Check if the Git repository directory exists
if [ ! -d "$repo_dir" ]; then
    # Clone the GitHub repository if it doesn't exist
    echo "Cloning repository: $repo_dir"
    git clone https://github.com/CMiddleton3/bash-files.git "$repo_dir"
fi

# Navigate to the directory where the Git repository is cloned
echo "Changing to repository directory: $repo_dir"
cd "$repo_dir"

# Pull the latest changes from the Git repository
echo "Pulling latest changes from repository"
git pull

# Copy the dot files to your home directory
echo "Copying .bashrc"
cp .bashrc ~/.bashrc
echo "Copying .bash_profile"
cp .bash_profile ~/.bash_profile
echo "Copying .bash_aliases"
cp .bash_aliases ~/.bash_aliases
echo "Copying .win_aliases"
cp .win_aliases ~/.win_aliases
echo "Copying .misc_aliases"
cp .misc_aliases ~/.misc_aliases
echo "Copying .vimrc"
cp .vimrc ~/.vimrc
echo "Copying .tmux.conf"
cp .tmux.conf ~/.tmux.conf

# Create a symlink to keep the .dot file synced only if it doesn't already exist
if [ ! -e ~/sync_dot_files.sh ]; then
    echo "Creating symlink for sync_dot_files.sh"
    chmod +x ~/bash-files/sync_dot_files.sh
    ln -s ~/bash-files/sync_dot_files.sh ~/sync_dot_files.sh
fi

# Source the updated dot files
echo "Sourcing updated dot files"
source ~/.bash_profile
