{ pkgs, ... }:

{
  home.packages = with pkgs; [
    libqalculate
    unrar-wrapper
    zip
    dnsutils
    nmap
    ipcalc
    cowsay
    cmatrix
    strace
    ltrace
    lsof
    lm_sensors
    pciutils
    usbutils
    pstree
    gnumake
    stow
    bat
    fastfetch
    ripgrep
    fd
    qrencode
    file
    timg
    imagemagick
    openssl
    ffmpeg-full
    bc
    wl-clipboard
    unzip
    trash-cli
    duf
  ];

  imports = [
    ./fzf.nix
    ./prompt.nix
    ./shell.nix
    ./tmux.nix
    ./ghostty.nix
    ./yazi.nix
    ./lsd.nix
  ];
}
