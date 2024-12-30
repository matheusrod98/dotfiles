{
  config,
  pkgs,
  inputs,
  osConfig,
  ...
}:

{
  imports = [
    ./home/desktop_environment
    ./home/programming
    ./home/terminal
    ./home/mimeapps.nix
    inputs.walker.homeManagerModules.default
  ];

  home = {
    username = "matheus";
    homeDirectory = "/home/matheus";
    stateVersion = osConfig.system.stateVersion;
  };

  programs.home-manager.enable = true;
}
