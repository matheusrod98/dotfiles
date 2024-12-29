{ pkgs, ... }:
{
  environment = {
    systemPackages = with pkgs; [
      pritunl-client
      cloudflare-warp
    ];
  };

  services = {
    clamav = {
      daemon.enable = true;
      updater.enable = true;
    };
  };

  systemd = {
    packages = [
      pkgs.pritunl-client
      pkgs.cloudflare-warp
    ];
    targets = {
      multi-user.wants = [
        "pritunl-client.service"
        "warp-svc.service"
      ];
    };
    user.services.warp-taskbar.wantedBy = [ "graphical.target" ];
  };
}
