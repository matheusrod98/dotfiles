#! /bin/zsh

local branches target
    branches=$(
        git --no-pager branch --all | grep -v "^\*" | tr -d ' '
    ) || return
    target=$(
        (echo "$branches") | fzf --height=40% --reverse --info=inline --prompt="switch> "
    ) || return

if [[ $target == *"."* ]]; then
    git switch $(awk -F ' ' '{print $1}' <<<"$target")
elif [[ $target == *"/"* ]]; then
    git switch $(awk -F '/' '{print $NF}' <<<"$target")
elif [[ $target == *" "* ]]; then
    git switch $(awk -F ' ' '{print $1}' <<<"$target")
else 
    git switch $target
fi
