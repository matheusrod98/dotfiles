{ ... }:

{
  security.rtkit.enable = true;
  services.pipewire = {
    enable = true;
    pulse.enable = true;
    alsa.enable = true;
    alsa.support32Bit = true;
    extraConfig.pipewire-pulse = {
      "block-slack-auto-microphone-gain-control" = {
        "pulse.rules" = [
          {
            actions = {
              quirks = [
                "block-source-volume"
              ];
            };
            matches = [
              {
                "application.process.binary" = "slack";
              }
            ];
          }
        ];
      };
    };
  };
}
