{ pkgs, ... }:

{
  programs.git = {
    enable = true;
    ignores = [ ];
    lfs.enable = true;
    userEmail = "matheusrodrigues@poli.ufrj.br";
    userName = "Matheus de Souza";
    extraConfig = {
      core = {
        editor = "nvim";
        pager = "bat --paging=auto --decorations=never";
      };
      pull = {
        rebase = true;
      };
      push = {
        autoSetupRemote = true;
      };
    };
  };
}
