{ pkgs, ... }:

{
  programs.fzf = {
    enable = true;
    enableZshIntegration = true;
    changeDirWidgetCommand = "fd --type d -H -L --exclude '*node_modules*' --exclude '*nix-*' --exclude '*.local*' --exclude '*.git*' --exclude '.cache'";
    fileWidgetCommand = "fd --type f --exclude '*node_modules*' --exclude '*nix*' --exclude '*.local*' --exclude '*.git*' --exclude '.cache'";
    defaultCommand = "fd --type f --exclude '*node_modules*' --exclude '*nix*' --exclude '*.local*' --exclude '*.git*' --exclude '.cache'";
  };
}
