tmux list-sessions -F "#{session_name}" | fzf --height 40% --reverse --border | xargs -I{} tmux attach -t {}
