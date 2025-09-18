#!/bin/bash

SESSION=quidkey

# Start tmux session with first window in folder1 (replace with your actual path)
tmux new-session -d -s $SESSION -n core -c /root/code/quidkey/Quidkey-core

# Create additional windows in other folders
tmux new-window -t $SESSION:1 -n report -c /root/code/quidkey/core-report
tmux new-window -t $SESSION:2 -n mp_be -c /root/code/quidkey/merchant-portal/backend
tmux new-window -t $SESSION:3 -n mp_fe -c /root/code/quidkey/merchant-portal/frontend

# Select the first window and attach to the session
tmux select-window -t $SESSION:0
tmux attach-session -t $SESSION