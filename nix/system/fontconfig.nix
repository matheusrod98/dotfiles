{ pkgs, ... }:

{
  fonts.fontconfig = {
    enable = true;
    hinting = {
      style = "slight";
      enable = true;
    };
    subpixel = {
      rgba = "rgb";
    };
  };
}
