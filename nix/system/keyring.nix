{ pkgs, ... }:

{
  services.gnome.gnome-keyring.enable = true;
  environment.systemPackages = [ pkgs.libsecret ];
  environment.variables.XDG_RUNTIME_DIR = "/run/user/$UID";
}
