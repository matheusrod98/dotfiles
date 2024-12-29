{ pkgs, ... }:

{
  services = {
    xserver.xkb.layout = "us";
    libinput.enable = true;
  };
}
