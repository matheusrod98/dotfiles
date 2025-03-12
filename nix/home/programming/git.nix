{ pkgs, ... }:

{
  programs.git = {
    enable = true;
    ignores = [ ];
    lfs.enable = true;
    userEmail = "maths.souza98@gmail.com";
    userName = "Matheus de Souza";
    signing = {
      key = "970BD0800764160F148823B51934C2D9CC5B4B0B";
      signByDefault = true;
      format = "openpgp";
    };
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
      url = {
        "git@github.com:" = {
          insteadOf = "https://github.com/";
        };
      };
    };
  };
}
