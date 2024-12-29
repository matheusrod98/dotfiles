{
  config,
  lib,
  pkgs,
  inputs,
  ...
}:

{
  environment.systemPackages = [
    pkgs.nautilus
    pkgs.gst_all_1.gstreamer
  ];
  services.gvfs.enable = true;
  nixpkgs.overlays = [
    (self: super: {
      gnome = super.gnome.overrideScope (
        gself: gsuper: {
          nautilus = gsuper.nautilus.overrideAttrs (nsuper: {
            buildInputs =
              nsuper.buildInputs
              ++ (with pkgs.gst_all_1; [
                gst-plugins-good
                gst-plugins-bad
              ]);
          });
        }
      );
    })
  ];
}
