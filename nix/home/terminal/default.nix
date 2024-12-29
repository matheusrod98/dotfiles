{ pkgs, inputs, ... }:

{
  home.packages = with pkgs; [
    dig
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
    inputs.ghostty.packages.x86_64-linux.default
    unrar-wrapper
    zip
  ];

  imports = [
    ./fzf.nix
    ./prompt.nix
    ./shell.nix
  ];
}
