{ pkgs, ... }:
{
  xdg.mimeApps = {
    enable = true;
    defaultApplications = {
      "image/jpeg" = [ "imv.desktop" ];
      "image/png" = [ "imv.desktop" ];
      "image/webp" = [ "imv.desktop" ];
      "image/gif" = [ "imv.desktop" ];
      "image/svg+xml" = [ "imv.desktop" ];
      "image/svg" = [ "imv.desktop" ];
      "video/mp4" = [ "mpv.desktop" ];
      "video/x-matroska" = [ "mpv.desktop" ];
      "video/x-msvideo" = [ "mpv.desktop" ];
      "video/x-ms-wmv" = [ "mpv.desktop" ];
      "x-scheme-handler/http" = [ "firefox.desktop" ];
      "x-scheme-handler/https" = [ "firefox.desktop" ];
      "x-scheme-handler/mailto" = [ "firefox.desktop" ];
      "x-scheme-handler/webcal" = [ "firefox.desktop" ];
      "application/eps" = [ "org.pwmt.zathura.desktop" ];
      "application/pdf" = [ "org.pwmt.zathura.desktop" ];
      "text/plain" = [ "nvim.desktop" ];
      "application/javascript" = [ "nvim.desktop" ];
      "application/typescript" = [ "nvim.desktop" ];
      "x-scheme-handler/postman" = [ "Postman.desktop" ];
      # "application/x-bittorrent" = [ "transmission-qt.desktop" ];
      # "x-scheme-handler/magnet" = [ "transmission-qt.desktop" ];
    };
  };
}
