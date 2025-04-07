{ ... }:

{
  services.pipewire.wireplumber.extraConfig = {
    "access.rules" = {
      matches = [
        {
          "application.process.binary" = "slack";
        }
      ];
      actions = {
        update-props = {
          "default_permissions" = "rx";
        };
      };
    };
  };
}
