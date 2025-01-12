#!/bin/bash

# Define the directory path for the Git repository
echo "Defining repository directory: $repo_dir"
repo_dir="$HOME/bash-files"

# Check if the Git repository directory exists
if [ ! -d "$repo_dir" ]; then
    # Clone the GitHub repository if it doesn't exist
    echo "Cloning repository: $repo_dir"
    git clone https://github.com/CMiddleton3/bash-files.git "$repo_dir"
fi

# Navigate to the directory where the Git repository is cloned
echo "Changing to repository directory: $repo_dir"
cd "$repo_dir"

# Check if there are any changes in the repository and store the result in a variable
if [ ! -z "$(git diff --name-only)" ]; then
    has_changes="true"
else
    has_changes="false"
fi

# Conditionally pull the latest changes from the Git repository based on whether there are changes
if [ "$has_changes" = "true" ]; then
    echo "Pulling latest changes from repository"
    git pull
fi

# Copy the dot files to your home directory only if there are changes
if [ "$has_changes" = "true" ]; then
    echo "Copying .bashrc"
    cp .bashrc $HOME/.bashrc
    echo "Copying .bash_profile"
    cp .bash_profile $HOME/.bash_profile
    echo "Copying .bash_aliases"
    cp .bash_aliases $HOME/.bash_aliases
    echo "Copying .win_aliases"
    cp .win_aliases $HOME/.win_aliases
    echo "Copying .misc_aliases"
    cp .misc_aliases $HOME/.misc_aliases
    echo "Copying .vimrc"
    cp .vimrc $HOME/.vimrc
    echo "Copying .tmux.conf"
    cp .tmux.conf $HOME/.tmux.conf

    # Source the updated dot files only if there are changes
    echo "Sourcing updated dot files"
    source $HOME/.bash_profile
else
    # If there are no changes, echo a message indicating this
    echo "No changes in repository."
fi

# Create a symlink to keep the sync_dot_files.sh script synced only if it doesn't already exist
if [ ! -e $HOME/sync_dot_files.sh ]; then
    echo "Creating symlink for sync_dot_files.sh"
    chmod +x $HOME/bash-files/sync_dot_files.sh
    ln -s $HOME/bash-files/sync_dot_files.sh $HOME/sync_dot_files.sh
fi

# Source the updated dot files
if [ "$has_changes" = "true" ]; then
    echo "Sourcing updated dot files"
    source $HOME/.bash_profile
fi