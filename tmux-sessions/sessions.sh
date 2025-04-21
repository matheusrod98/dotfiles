#!/bin/sh

SCRIPTS_DIR="$HOME/.dotfiles/tmux-sessions/templates"

if ! command -v tmux >/dev/null 2>&1; then
  echo "Error: tmux is not installed. Please install it first."
  exit 1
fi

if [ ! -d "$SCRIPTS_DIR" ]; then
  echo "Error: Scripts directory $SCRIPTS_DIR does not exist."
  exit 1
fi

script_count=$(find "$SCRIPTS_DIR" -type f | wc -l)
if [ "$script_count" -eq 0 ]; then
  echo "No scripts found in $SCRIPTS_DIR."
  exit 1
fi

selected_script=$(find "$SCRIPTS_DIR" -type f | sed 's/\.sh$//' | fzf --prompt="Select a tmux session template: ")

if [ -z "$selected_script" ]; then
  echo "No script selected. Exiting."
  exit 1
fi

script_path="$selected_script.sh"
if [ ! -f "$script_path" ]; then
  echo "Error: Script $script_path does not exist."
  exit 1
fi

echo -n "Enter a session name: "
read -r SESSION_NAME

if [ -z "$SESSION_NAME" ]; then
  echo "No session name provided. Exiting."
  exit 1
fi

chmod +x "$script_path"

export SESSION_NAME
"$script_path"

if ! tmux has-session -t "$SESSION_NAME" 2>/dev/null; then
  echo "Error: Session '$SESSION_NAME' was not created successfully."
  exit 1
fi
