{ pkgs, ... }:

{
  home.packages = with pkgs; [
    neovim
    lua51Packages.tiktoken_core
    ripgrep
    mercurialFull
    luajitPackages.magick
    quicktype
    fd
    lua51Packages.luarocks
    lua51Packages.lua
    tree-sitter
    lynx
    python312Packages.pylatexenc
    python312Packages.debugpy
    vscode-js-debug
  ];
}
