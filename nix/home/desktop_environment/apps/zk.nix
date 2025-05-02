{ ... }:

{
  programs.zk = {
    enable = true;
    settings = {
      note = {
        template = "default.md";
      };
      extra = {
        author = "Matheus";
      };
      format = {
        markdown = {
          hashtags = true;
          colon-tags = false;
          multiword-tags = false;
        };
      };
      lsp.diagnostics = {
        dead-link = "error";
      };
    };
  };
}
