man -k . | fzf --prompt='man> ' | awk '{print $1}' | xargs -r man
