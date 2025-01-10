{ pkgs, inputs, ... }:

{
  home.packages = with pkgs; [
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
    eza
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
    tmux
  ];

  imports = [
    ./fzf.nix
    ./prompt.nix
    ./shell.nix
    ./tmux.nix
    ./ghostty.nix
  ];
}
