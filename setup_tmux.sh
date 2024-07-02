#!/bin/bash

# Clone tmux plugin manager
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

# Download .tmux.conf from your repo
# Replace YOUR_USERNAME and YOUR_REPO with your actual GitHub username and repository name
curl -o ~/.tmux.conf https://raw.githubusercontent.com/NielFourie/Linux/main/.tmux.conf

# Start a new tmux session
tmux new-session -d -s setup

# Send the prefix key (Ctrl+B) followed by 'I' to install plugins
tmux send-keys -t setup C-b I

# Attach to the session
tmux attach-session -t setup