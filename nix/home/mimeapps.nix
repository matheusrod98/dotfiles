{ pkgs, ... }:
{
  xdg = {
    mime.enable = true;
    mimeApps = {
      enable = true;
      defaultApplications = {
        "application/x-executable" = [ "ghostty.desktop" ];
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
        "text/html" = [ "google-chrome.desktop nvim.desktop" ];
        "x-scheme-handler/about" = [ "google-chrome.desktop" ];
        "x-scheme-handler/http" = [ "google-chrome.desktop" ];
        "x-scheme-handler/https" = [ "google-chrome.desktop" ];
        "x-scheme-handler/mailto" = [ "google-chrome.desktop" ];
        "x-scheme-handler/webcal" = [ "google-chrome.desktop" ];
        "application/eps" = [ "org.pwmt.zathura.desktop" ];
        "application/pdf" = [ "org.pwmt.zathura.desktop google-chrome.desktop" ];
        "text/plain" = [ "nvim.desktop" ];
        "text/x-python" = [ "nvim.desktop" ];
        "application/javascript" = [ "nvim.desktop" ];
        "application/typescript" = [ "nvim.desktop" ];
        "application/x-shellscript" = [ "nvim.desktop" ];
        "application/json" = [ "nvim.desktop" ];
        "application/xml" = [ "nvim.desktop" ];
        "x-scheme-handler/postman" = [ "Postman.desktop" ];
        # "application/x-bittorrent" = [ "transmission-qt.desktop" ];
        # "x-scheme-handler/magnet" = [ "transmission-qt.desktop" ];
      };
    };
  };
}
