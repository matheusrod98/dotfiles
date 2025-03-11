{ ... }:

{
  programs.gnupg.agent = {
    enable = true;
    settings = {
      default-cache-ttl = 604800;
      max-cache-ttl = 604800;
    };
  };
}
