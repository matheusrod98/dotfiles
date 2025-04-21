#!/bin/sh

if [ -z "$SESSION_NAME" ]; then
  echo -n "Enter a session name: "
  read -r SESSION_NAME
fi

tmux new-session -d -s "$SESSION_NAME"

tmux rename-window -t "$SESSION_NAME":1 "system"
tmux send-keys -t "$SESSION_NAME":1 "btop" C-m

tmux new-window -t "$SESSION_NAME":2 -n "servers"
tmux split-window -t "$SESSION_NAME":2 -h
tmux send-keys -t "$SESSION_NAME":2.1 "cd $HOME/Work/tupi-fintech/yby-ui && pnpm dev" C-m
tmux send-keys -t "$SESSION_NAME":2.2 "cd $HOME/Work/tupi-fintech/yby-tools && make up-local" C-m
tmux send-keys -t "$SESSION_NAME":2.2 "lazydocker" C-m

sleep 2

tmux new-window -t "$SESSION_NAME":3 -n "db"
tmux send-keys -t "$SESSION_NAME":3 "docker exec -it yby-tools-postgres bash" C-m
tmux send-keys -t "$SESSION_NAME":3 "psql -U postgres yby_organization_api" C-m

tmux new-window -t "$SESSION_NAME":4 -n "yby-ui"
tmux send-keys -t "$SESSION_NAME":4 "cd $HOME/Work/tupi-fintech/yby-ui" C-m
tmux send-keys -t "$SESSION_NAME":4 "vim ." C-m

tmux new-window -t "$SESSION_NAME":5 -n "yby-organization-api"
tmux send-keys -t "$SESSION_NAME":5 "cd $HOME/Work/tupi-fintech/yby-organization-api" C-m
tmux send-keys -t "$SESSION_NAME":5 "vim ." C-m

tmux attach -t "$SESSION_NAME"
