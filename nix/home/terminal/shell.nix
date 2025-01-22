{ pkgs, ... }:

{
  home.packages = with pkgs; [
    zsh-syntax-highlighting
    zsh-completions
  ];
  programs.zsh = {
    enable = true;
    syntaxHighlighting.enable = true;
    initExtraFirst = "[[ $- != *i* ]] && return";
    initExtraBeforeCompInit = ''
      bindkey "^R" history-incremental-pattern-search-backward
      bindkey "^?" backward-delete-char
    '';
    initExtra = ''
      echo -e "\e[5 q"
      source <(warp-cli generate-completions zsh)
      source <(kubectl completion zsh)
      function find_user_files() {
        local dir=$(fd -H -L --type d --base-directory $HOME --exclude "*node_modules*" --exclude "*nix*" --exclude "*.local*" --exclude "*.git*" --exclude ".cache" | fzf --preview 'eza --tree -L2 $HOME/{}')
        if [[ -z "$dir" ]]; then
                zle redisplay
                return 0
        fi
        zle push-line
        if [[ "$dir" != "$HOME/" ]]; then
                BUFFER="builtin cd -- '$HOME/$dir'"
                zle accept-line
        fi
        local ret=$?
        unset dir
        zle reset-prompt
        return $ret
      }
      zle -N find_user_files
      bindkey '^P' find_user_files

      function open_files() {
        local file=$(fd --type f --base-directory=$HOME --full-path $HOME | fzf --preview '$HOME/.local/bin/scripts/fzf/fzf-preview.sh $HOME/{}')
        [[ $file == "" ]] && return
        xdg-open $HOME/$file & disown
        zle reset-prompt
      }
      zle -N open_files
      bindkey '^o' open_files
    '';
    enableCompletion = true;
    completionInit = ''
      autoload bashcompinit && bashcompinit
      autoload -Uz compinit && compinit
      zstyle ':completion:*' menu select
      zmodload -i zsh/complist
      bindkey -M menuselect "^[[Z" reverse-menu-complete
      complete -C '$(which aws_completer)' aws
    '';
    history = {
      ignoreAllDups = true;
      size = 1000000;
    };
    localVariables = {
      EDITOR = "nvim";
      VISUAL = "nvim";
      SYSTEMD_EDITOR = "nvim";
      MANPAGER = "nvim +Man!";
      PATH = "$HOME/.local/bin:$PATH";
    };
    shellAliases = {
      "l" = "exa --icons --color=auto --hyperlink";
      "ll" = "exa --long --icons --color=auto --hyperlink";
      "la" = "exa --icons --all --color=auto --hyperlink";
      "lla" = "exa --long --icons --all --color=auto --hyperlink";
      "lal" = "exa --long --icons --all --color=auto --hyperlink";
      "ls" = "exa --icons --color=auto --hyperlink";
      "cp" = "cp -i";
      "mv" = "mv -i";
      "rm" = "rm -i";
      "grep" = "rg";
      "find" = "fd";
      "cat" = "bat --paging=never --decorations=never";
      "tree" = "exa --tree --icons --color=auto";
      "less" = "bat --paging=always --decorations=never";
      "open" = "xdg-open";
      "vim" = "nvim";
      "xc" = "wl-copy";
      "cl" = "clear";
      "neofetch" = "fastfetch";
      "gd" = "git diff";
      "gs" = "git status";
      "gl" = "git log";
      "gc" = "git checkout";
      "gb" = "git checkout -b";
      "gp" = "git pull";
      "gP" = "git push";
      "gr" = "git restore .";
      "gi" =
        "git branch -a | grep -v \"^\\*\" | sed \"s/^[[:space:]]*//g\" | sed \"s/remotes\\/origin\\///g\" | sort -u | fzf --height 20% --layout=reverse | xargs git switch 2&>> /dev/null";
      "awslocal" = "aws --profile localstack";
      "ti" =
        "tmux attach -t $(tmux ls | sort -u | fzf --height 20% --layout=reverse | sed \"s/:.*//g\") 2&>> /dev/null";
    };
  };
}
