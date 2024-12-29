{ pkgs, ... }:
{
  environment = {
    systemPackages = with pkgs; [
      git
      vim
      wget
      greetd.regreet
      polkit
      polkit_gnome
      gnome-keyring
      libsecret
    ];
  };
}
