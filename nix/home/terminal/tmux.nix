{ pkgs, ... }:

{
  programs.tmux = {
    enable = true;
    baseIndex = 1;
    clock24 = true;
    mouse = true;
    escapeTime = 10;
    focusEvents = true;
    historyLimit = 100000;
    keyMode = "vi";
    prefix = "M-Space";
    extraConfig = ''
      set -g default-terminal "$TERM"
      set -ga terminal-overrides ",$TERM*:Tc"
      set-option -g status-left-length 100
      unbind -T copy-mode-vi Space;
      unbind -T copy-mode-vi Enter;
      bind -T copy-mode-vi v send-keys -X begin-selection
      bind -T copy-mode-vi y send-keys -X copy-pipe-and-cancel "wl-copy -n"
      bind -n M-h select-pane -L
      bind -n M-j select-pane -D
      bind -n M-k select-pane -U
      bind -n M-l select-pane -R
      bind -n C-M-k resize-pane -U
      bind -n C-M-j resize-pane -D
      bind -n C-M-h resize-pane -L
      bind -n C-M-l resize-pane -R
      bind -n S-M-k swap-pane -s '{up-of}'
      bind -n S-M-j swap-pane -s '{down-of}'
      bind -n S-M-h swap-pane -s '{left-of}'
      bind -n S-M-l swap-pane -s '{right-of}'
      bind -n M-q kill-pane
      bind -n M-n new-window -c "#{pane_current_path}"
      bind -n M-Q kill-window
      bind -n M-1 select-window -t 1
      bind -n M-2 select-window -t 2
      bind -n M-3 select-window -t 3
      bind -n M-4 select-window -t 4
      bind -n M-5 select-window -t 5
      bind -n M-6 select-window -t 6
      bind -n M-7 select-window -t 7
      bind -n M-8 select-window -t 8
      bind -n M-9 select-window -t 9
      bind -n M-0 select-window -t 10
      bind -n M-w last-window
      bind -n M-= split-window -h -c "#{pane_current_path}"
      bind -n M-- split-window -v -c "#{pane_current_path}"
      bind -n M-, previous-window
      bind -n M-. next-window
      bind -n M-< swap-window -d -t -1
      bind -n M-> swap-window -d -t +1
      bind -n M-s copy-mode
      bind R command-prompt "rename-window '%%'"
      bind S command-prompt "new-session '-s%%'"
      bind D command-prompt "kill-session '-t%%'"
      unbind %
      unbind '"'
    '';
  };
}
