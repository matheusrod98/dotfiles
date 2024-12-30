{ pkgs, ... }:
{
  environment = {
    systemPackages = with pkgs; [
      git
      neovim
      wget
      greetd.regreet
      polkit
      polkit_gnome
      gnome-keyring
      libsecret
    ];
  };
}
