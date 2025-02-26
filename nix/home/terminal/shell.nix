{ pkgs, config, ... }:

{
  home.packages = with pkgs; [
    zsh-syntax-highlighting
    zsh-completions
  ];
  programs.zsh = {
    enable = true;
    dotDir = ".config/zsh";
    syntaxHighlighting.enable = true;
    initExtraFirst = "[[ $- != *i* ]] && return";
    initExtraBeforeCompInit = ''
      bindkey "^R" history-incremental-pattern-search-backward
      bindkey "^?" backward-delete-char
    '';
    initExtra = ''
      function open_files() {
        local file=$(fd --type f --base-directory=$HOME --full-path $HOME | fzf --preview '$HOME/.local/bin/scripts/fzf/fzf-preview.sh $HOME/{}')
        [[ $file == "" ]] && return
        xdg-open $HOME/$file & disown
        zle reset-prompt
      }
      zle -N open_files
      bindkey '^o' open_files

      bindkey -M menuselect 'h' vi-backward-char
      bindkey -M menuselect 'k' vi-up-line-or-history
      bindkey -M menuselect 'l' vi-forward-char
      bindkey -M menuselect 'j' vi-down-line-or-history
    '';
    envExtra = ''
      export CYPRESS_RUN_BINARY=${pkgs.cypress}/bin/Cypress
    '';
    enableCompletion = true;
    completionInit = ''
      autoload bashcompinit && bashcompinit
      autoload -Uz compinit && compinit
      zstyle ':completion:*' menu select
      zmodload -i zsh/complist
      bindkey -M menuselect "^[[Z" reverse-menu-complete
      complete -C '$(which aws_completer)' aws
      source <(warp-cli generate-completions zsh)
      source <(kubectl completion zsh)
    '';
    history = {
      ignoreAllDups = true;
      ignoreSpace = true;
      size = 1000000;
      append = true;
      path = "${config.xdg.cacheHome}/zsh/zsh_history";
    };
    localVariables = {
      EDITOR = "nvim";
      VISUAL = "nvim";
      SYSTEMD_EDITOR = "nvim";
      MANPAGER = "nvim +Man!";
      PATH = "$HOME/.local/bin:$PATH";
    };
    shellAliases = {
      "cp" = "cp -i";
      "mv" = "mv -i";
      "rm" = "rm -i";
      "grep" = "rg";
      "find" = "fd";
      "cat" = "bat --paging=never --decorations=never";
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
        "git branch -a | grep -v \"^\\*\" | sed \"s/^[[:space:]]*//g\" | sed \"s/remotes\\/origin\\///g\" | sort -u | fzf --height 20% --layout=reverse | xargs -r git switch";
      "awslocal" = "aws --profile localstack";
      "ti" =
        "tmux ls | sort -u | fzf --height 20% --layout=reverse | sed \"s/:.*//g\" | xargs -r tmux attach -t";
      "cloc" = "tokei";
    };
  };
}
