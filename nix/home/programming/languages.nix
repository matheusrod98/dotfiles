{ pkgs, ... }:

{
  home.packages = with pkgs; [
    # C#
    omnisharp-roslyn
    netcoredbg
    dotnet-sdk

    # Lua
    luaformatter
    lua-language-server
    luajitPackages.luacheck

    # Nix
    nixd
    nixfmt-rfc-style

    # Python
    python3Full
    basedpyright
    ruff

    # Typescript/Javascript
    nodejs
    nodePackages.ts-node
    typescript-language-server
    eslint
    nodePackages.prettier

    # Bash
    bash-language-server
    shellcheck

    # Zig
    zig

    # Golang
    gopls

    delve
    revive

    # Autotools
    checkmake

    # C/C++
    cppcheck

    # LaTeX
    texlivePackages.chktex

    # Others
    tailwindcss-language-server
    yaml-language-server
    vscode-langservers-extracted
  ];

  programs = {
    go = {
      enable = true;
      goBin = ".local/bin/go";
      goPath = ".local/bin/go";
    };
  };
}
