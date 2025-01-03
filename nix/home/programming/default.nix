{ pkgs, ... }:

{
  home.packages = with pkgs; [
    scc
    kubectl
    postman
    vscode
    redisinsight
    dig
    texliveFull
    gdb
    android-tools
    devpod
    jq
    gnumake
    clang
    clang-tools
    quicktype
    hadolint
    localstack
    awscli
  ];

  imports = [
    ./languages.nix
    ./git.nix
    ./neovim.nix
  ];
}
