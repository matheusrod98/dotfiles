#!/usr/bin/env bash

# TokyoNight colors for Tmux

set -g mode-style "fg=#80a0ff,bg=#3b4261"

set -g message-style "fg=#80a0ff,bg=#3b4261"
set -g message-command-style "fg=#80a0ff,bg=#3b4261"

set -g pane-border-style "fg=#3b4261"
set -g pane-active-border-style "fg=#80a0ff"

set -g status "on"
set -g status-justify "left"

set -g status-style "fg=#80a0ff,bg=#323437"

set -g status-left-length "100"
set -g status-right-length "100"

set -g status-left-style NONE
set -g status-right-style NONE

set -g status-left "#[fg=#15161e,bg=#80a0ff,bold] #S #[fg=#80a0ff,bg=#323437,nobold,nounderscore,noitalics]"
set -g status-right "#[fg=#323437,bg=#323437,nobold,nounderscore,noitalics]#[fg=#80a0ff,bg=#323437] #{prefix_highlight} #[fg=#3b4261,bg=#323437,nobold,nounderscore,noitalics]#[fg=#80a0ff,bg=#3b4261] %Y-%m-%d  %I:%M %p #[fg=#80a0ff,bg=#3b4261,nobold,nounderscore,noitalics]#[fg=#15161e,bg=#80a0ff,bold] #h "

setw -g window-status-activity-style "underscore,fg=#a9b1d6,bg=#323437"
setw -g window-status-separator ""
setw -g window-status-style "NONE,fg=#a9b1d6,bg=#323437"
setw -g window-status-format "#[fg=#323437,bg=#323437,nobold,nounderscore,noitalics]#[default] #I  #W #F #[fg=#323437,bg=#323437,nobold,nounderscore,noitalics]"
setw -g window-status-current-format "#[fg=#323437,bg=#3b4261,nobold,nounderscore,noitalics]#[fg=#80a0ff,bg=#3b4261,bold] #I  #W #F #[fg=#3b4261,bg=#323437,nobold,nounderscore,noitalics]"

# tmux-plugins/tmux-prefix-highlight support
set -g @prefix_highlight_output_prefix "#[fg=#e0af68]#[bg=#323437]#[fg=#323437]#[bg=#e0af68]"
set -g @prefix_highlight_output_suffix ""
