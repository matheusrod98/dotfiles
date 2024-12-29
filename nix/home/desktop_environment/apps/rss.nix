{ pkgs, ... }:
{
  programs.newsboat = {
    enable = true;
    urls = [
      {
        url = "https://tkdodo.eu/blog/rss.xml";
        tags = [ "Web development" ];
      }
      {
        url = "https://kentcdodds.com/blog/rss.xml";
        tags = [ "Web development" ];
      }
      {
        url = "https://overreacted.io/rss.xml";
        tags = [ "Web development" ];
      }
    ];
    extraConfig = ''
      browser "xdg-open '%u'"
      unbind-key j
      unbind-key k
      unbind-key J
      unbind-key K
      bind-key j down
      bind-key k up
      bind-key l open
      bind-key h quit
    '';
  };
}
