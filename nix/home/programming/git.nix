{ ... }:

{
  programs.git = {
    enable = true;
    ignores = [ ];
    lfs.enable = true;
    userEmail = "maths.souza98@gmail.com";
    userName = "Matheus de Souza";
    signing = {
      key = "896477E5EBF4BAB9C15E237C61282F5E41962F08";
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
