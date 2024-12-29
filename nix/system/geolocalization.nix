{ pkgs, ... }:

{
  services = {
    geoclue2 = {
      enable = true;
      geoProviderUrl = "https://beacondb.net/v1/geolocate";
    };
  };
}
