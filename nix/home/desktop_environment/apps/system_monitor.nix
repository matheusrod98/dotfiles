{ ... }:

{
  programs.btop = {
    enable = true;
    settings = {
      vim_keys = true;
      rounded_corners = true;
      update_ms = 500;
      proc_sorting = "memory";
    };
  };
}
