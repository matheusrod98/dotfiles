{ pkgs, ... }:
{
  environment = {
    systemPackages = with pkgs; [
      cloudflare-warp
    ];
  };

  services = {
    clamav = {
      daemon.enable = false;
      updater.enable = false;
    };
  };

  systemd = {
    packages = [
      pkgs.cloudflare-warp
    ];
    targets = {
      multi-user.wants = [
        "warp-svc.service"
      ];
    };
    user.services.warp-taskbar.wantedBy = [ "graphical.target" ];
  };
}
