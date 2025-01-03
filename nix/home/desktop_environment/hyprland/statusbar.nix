{
  pkgs,
  lib,
  config,
  ...
}:

{
  programs.waybar = {
    enable = true;
    style = lib.mkForce ''
      * {
          min-height: 0;
      }
      window#waybar {
          border: none;
          border-radius: 0%;
          padding: 0px;
          margin: 0px;
          background: #${config.lib.stylix.colors.base02};
          font-size: 11px;
      }
      #pulseaudio,
      #network,
      #mpris,
      #bluetooth,
      #network,
      #custom-scratchpad,
      #custom-dunst,
      #power,
      #hardware,
      #workspaces,
      #day,
      #privacy,
      #custom-dunst,
      #tray {
          margin: 6px 2px;
          padding: 0px 12px;
          border-radius: 16px;
          background: #${config.lib.stylix.colors.base07};
      }
      #tray menu {
          border-radius: 12px;
      }
      #mpris {
          color: #${config.lib.stylix.colors.base0D};
      }
      #privacy {
          color: #${config.lib.stylix.colors.base09};
      }
      #clock {
      }
      #battery {
          color: #${config.lib.stylix.colors.base0B};
      }
      #battery.charging {
          color: #${config.lib.stylix.colors.base0B};
      }
      #temperature,
      #cpu,
      #custom-gpu {
      }
      #memory {
      }
      #memory.critical,
      #cpu.critical,
      #battery.critical.discharging,
      #custom-gpu.critical,
      #temperature.critical {
          color: #${config.lib.stylix.colors.base08};
      }
      #memory.warning,
      #battery.warning.discharging,
      #custom-gpu.warning,
      #cpu.warning {
          color: #${config.lib.stylix.colors.base09};
      }
      #workspaces {
        margin: 6px;
        padding: 0px;
      }
      #workspaces button {
          border-radius: 100%;
          color: #${config.lib.stylix.colors.base03};
      }
      #workspaces button.active {
          color: #${config.lib.stylix.colors.base0A};
      }
      #custom-dunst {
        margin: 6px 6px 6px 0px;
      }
    '';
    settings = [
      {
        layer = "top";
        height = 18;
        spacing = 4;
        modules-left = [ "hyprland/workspaces" ];
        "hyprland/workspaces" = {
          format = "{icon}";
          on-scroll-up = "hyprctl dispatch workspace e+1";
          on-scroll-down = "hyprctl dispatch workspace e-1";
          show-special = true;
          format-icons = {
            special = "";
          };
        };
        modules-right = [
          "mpris"
          "pulseaudio"
          "bluetooth"
          "network"
          "privacy"
          "group/hardware"
          "tray"
          "group/power"
          "group/day"
          "custom/dunst"
        ];
        "group/hardware" = {
          orientation = "horizontal";
          modules = [
            "temperature"
            "cpu"
            "custom/gpu"
            "memory"
            "disk"
          ];
        };
        "group/day" = {
          orientation = "horizontal";
          modules = [
            "custom/weather"
            "clock"
          ];
        };
        "group/power" = {
          orientation = "horizontal";
          modules = [
            "battery"
            "power-profiles-daemon"
          ];
        };
        power-profiles-daemon = {
          format = "{icon}";
          tooltip-format = "Power profile = {profile}\nDriver = {driver}";
          tooltip = true;
          format-icons = {
            default = "  ";
            performance = "  ";
            balanced = "  ";
            power-saver = "  ";
          };
        };
        "custom/gpu" = {
          exec = "cat /sys/class/hwmon/hwmon6/device/gpu_busy_percent";
          format = "      {}%";
          interval = 1;
          states = {
            warning = 80;
            critical = 90;
          };
        };
        "disk" = {
          "interval" = 30;
          "format" = "      {free}";
          "unit" = "GB";
        };
        "custom/weather" = {
          "format" = "{}°    ";
          "tooltip" = true;
          "interval" = 3600;
          "exec" = "wttrbar";
          "return-type" = "json";
        };
        "privacy" = {
          "icon-spacing" = 10;
          "icon-size" = 12;
          "transition-duration" = 250;
          "modules" = [
            {
              "type" = "screenshare";
              "tooltip" = true;
            }
            {
              "type" = "audio-in";
              "tooltip" = true;
            }
          ];
        };
        "mpris" = {
          "format" = "{player_icon}   {dynamic}";
          "format-paused" = "{status_icon}   {dynamic}";
          "dynamic-order" = [
            "title"
            "position"
            "length"
          ];
          "title-len" = 30;
          "player-icons" = {
            "default" = "";
          };
          "status-icons" = {
            "paused" = "";
          };
        };
        "cpu" = {
          "interval" = 1;
          "format" = "      {usage}%";
          "states" = {
            "warning" = 80;
            "critical" = 90;
          };
        };
        "memory" = {
          "interval" = 1;
          "format" = "      {}%";
          "states" = {
            "warning" = 80;
            "critical" = 90;
          };
        };
        "temperature" = {
          "interval" = 1;
          "critical-threshold" = 85;
          "format" = "  {temperatureC}°C";
        };
        "clock" = {
          "interval" = 1;
          "format" = "{:%a %d %b,  %H:%M}";
        };
        "battery" = {
          "states" = {
            "warning" = 30;
            "critical" = 15;
          };
          "format" = "{icon} {capacity}%";
          "format-icons" = [
            ""
            ""
            ""
            ""
            ""
          ];
          "format-charging" = " {capacity}%";
        };
        "pulseaudio" = {
          "format" = "{icon} {volume}%  {format_source}";
          "format-muted" = " {volume}%  {format_source}";
          "format-source" = " {volume}%";
          "format-source-muted" = " {volume}%";
          "format-icons" = {
            "headphones" = "";
            "handsfree" = "";
            "headset" = "";
            "phone" = "";
            "portable" = "";
            "car" = "";
            "default" = [
              ""
              ""
            ];
          };
        };
        "network" = {
          "interval" = 1;
          "interface" = "wlp4s0";
          "format" = "{ifname}";
          "format-wifi" = "  {essid} ({signalStrength}%)    {bandwidthUpBits}    {bandwidthDownBits}";
          "format-ethernet" = " {ifname}    {bandwidthUpBits}    {bandwidthDownBits}";
          "format-disconnected" = "";
          "tooltip-format-disconnected" = "Disconnected";
        };
        "bluetooth" = {
          "format" = " {status}";
          "format-connected" = " {device_alias}";
          "format-connected-battery" = " {device_alias} ({device_battery_percentage}%)";
          "format-connected-enumerate" = " {num_connections} connected";
          "format-connected-enumerate-battery" = " {num_connections} connected";
          "tooltip-format" = "{controller_alias}\t{controller_address}\n\n{num_connections} connected";
          "tooltip-format-connected" =
            "{controller_alias}\t{controller_address}\n\n{num_connections} connected\n\n{device_enumerate}";
          "tooltip-format-enumerate-connected" = "{device_alias}\t{device_address}";
          "tooltip-format-enumerate-connected-battery" =
            "{device_alias}\t{device_address}\t{device_battery_percentage}%";
        };
        "tray" = {
          "icon-size" = 15;
          "spacing" = 10;
        };
        "custom/dunst" = {
          "exec" = pkgs.writeShellScript "hello-from-waybar" ''
            COUNT=$(dunstctl count waiting)
            ENABLED=
            DISABLED=
            if [ "$COUNT" != 0 ]; then DISABLED=" $COUNT"; fi
            if dunstctl is-paused | grep -q "false" ; then echo $ENABLED; else echo "$DISABLED"; fi
          '';
          "on-click" = "dunstctl set-paused toggle";
          "restart-interval" = 1;
        };
      }
    ];
  };
}
