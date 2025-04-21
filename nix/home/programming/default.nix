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
    golangci-lint
    devpod
    devcontainer
    distrobox
    rust-stakeholder
    fireplace
    gh
    gh-dash
  ];

  imports = [
    ./languages.nix
    ./git.nix
    ./neovim.nix
  ];
}
