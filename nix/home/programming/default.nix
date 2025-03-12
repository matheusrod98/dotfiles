{ pkgs, ... }:

{
  home.packages = with pkgs; [
    tokei
    kubectl
    k9s
    postman
    insomnia
    pm2
    vscode
    redisinsight
    dig
    texliveFull
    gdb
    android-tools
    jq
    gnumake
    clang-tools
    quicktype
    hadolint
    localstack
    awscli
    cypress
    act
    goose
    devpod
  ];

  imports = [
    ./languages.nix
    ./git.nix
    ./neovim.nix
  ];
}
