#! /bin/zsh

local tags branches commits target
    branches=$(
        git --no-pager branch --all | grep -v "^\*" | tr -d ' '
    ) || return
    tags=$(
        git --no-pager tag --list
    ) || return
    commits=$(
        git --no-pager log --pretty=oneline --abbrev-commit --reverse
    ) || return
    target=$(
        (echo "$branches"; echo "$tags"; echo "$commits") | fzf --height=70% --reverse --info=inline --prompt="checkout> "
    ) || return

if [[ $target == *"."* ]]; then
    git checkout $(awk -F ' ' '{print $1}' <<<"$target")
elif [[ $target == *"/"* ]]; then
    git checkout $(awk -F '/' '{print $NF}' <<<"$target")
elif [[ $target == *" "* ]]; then
    git checkout $(awk -F ' ' '{print $1}' <<<"$target")
else 
    git checkout $target
fi
