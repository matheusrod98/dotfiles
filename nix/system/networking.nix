{ pkgs, ... }:
{
  networking = {
    networkmanager.enable = true;
    hostName = "matheus-laptop";
    nameservers = [
      "1.1.1.1#cloudflare-dns.com"
      "1.0.0.1#cloudflare-dns.com"
      "2606:4700:4700::1111#cloudflare-dns.com"
      "2606:4700:4700::1001#cloudflare-dns.com"
    ];
    firewall.enable = true;
    #firewall.allowedTCPPorts = [ ... ];
    #firewall.allowedUDPPorts = [ ... ];
  };
  services = {
    avahi.enable = true;
    resolved = {
      enable = true;
      dnssec = "allow-downgrade";
      domains = [ "~." ];
      dnsovertls = "opportunistic";
      fallbackDns = [
        "8.8.8.8#dns.google"
        "8.8.4.4#dns.google"
        "2001:4860:4860::8888#dns.google"
        "2001:4860:4860::8844#dns.google"
      ];
      extraConfig = ''
        MulticastDNS=resolve
      '';
      llmnr = "true";
    };
  };
}
