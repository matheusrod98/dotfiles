#!/bin/sh

if [ -z "$SESSION_NAME" ]; then
  echo -n "Enter a session name: "
  read -r SESSION_NAME
fi

tmux new-session -d -s "$SESSION_NAME"
tmux rename-window -t "$SESSION_NAME:1" 'system'
tmux send-keys -t "$SESSION_NAME:1" 'btop' C-m

tmux new-window -t "$SESSION_NAME:2" -n 'news'
tmux send-keys -t "$SESSION_NAME:2" 'newsboat' C-m
