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
          font-size: 10px;
          min-height: 0;
          padding: 0px;
          margin: 0px;
      }
      window#waybar {
          background: #${config.lib.stylix.colors.base02};
      }
      .modules-left {
        margin: 4px 0px 4px 6px;
      }
      .modules-right {
        margin: 4px 6px 4px 0px;
      }
      #workspaces {
        background: #403d52;
        padding: 2px 6px;
        border-radius: 16px;
      }
      #workspaces button {
        color: #${config.lib.stylix.colors.base03};
        padding: 2px 6px;
        border-radius: 16px;
      }
      #workspaces button.active {
        color: #${config.lib.stylix.colors.base0A};
        padding: 2px 6px;
        border-radius: 16px;
      }
      #tray {
        background: #403d52;
        padding: 2px 12px;
        border-radius: 16px;
      }
      #pulseaudio {
        background: #403d52;
        padding: 2px 12px;
        border-radius: 16px;
      }
      #network {
        background: #403d52;
        padding: 2px 12px;
        border-radius: 16px;
      }
      #bluetooth {
        background: #403d52;
        padding: 2px 12px;
        border-radius: 16px;
      }
      #power {
        background: #403d52;
        padding: 2px 12px;
        border-radius: 16px;
      }
      #privacy {
        background: #403d52;
        color: #${config.lib.stylix.colors.base09};
        padding: 2px 12px;
        border-radius: 16px;
      }
      #day {
        background: #403d52;
        padding: 2px 12px;
        border-radius: 16px;
      }
      #hardware {
        background: #403d52;
        padding: 2px 12px;
        border-radius: 16px;
      }
      #mpris {
        background: #403d52;
        color: #${config.lib.stylix.colors.base0D};
        padding: 2px 12px;
        border-radius: 16px;
      }
      #cpu {
        padding-right: 14px;
      }
      #custom-dunst {
        padding-right: 12px;
      }
      #memory {
        padding-right: 14px;
      }
      #disk {
        padding-right: 0px;
      }
      #custom-gpu {
        padding-right: 14px;
      }
      #temperature {
        padding-right: 14px;
      }
      #battery {
          color: #${config.lib.stylix.colors.base0C};
          padding-right: 10px;
      }
      #battery.charging {
          color: #${config.lib.stylix.colors.base0C};
      }
      #memory.critical,
      #cpu.critical,
      #custom-gpu.critical,
      #temperature.critical,
      #battery.critical.discharging {
          color: #${config.lib.stylix.colors.base08};
      }
      #battery.warning.discharging,
      #custom-gpu.warning,
      #memory.warning,
      #cpu.warning {
          color: #${config.lib.stylix.colors.base09};
      }
    '';
    settings = [
      {
        layer = "top";
        height = 16;
        spacing = 10;
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
          "privacy"
          "pulseaudio"
          "bluetooth"
          "network"
          "group/hardware"
          "group/power"
          "tray"
          "group/day"
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
            "custom/dunst"
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
        "power-profiles-daemon" = {
          "format" = "{icon}";
          "tooltip-format" = "Power profile = {profile}\nDriver = {driver}";
          "tooltip" = true;
          "format-icons" = {
            "default" = "";
            "performance" = "";
            "balanced" = "";
            "power-saver" = "";
          };
        };
        "custom/gpu" = {
          "exec" = "cat /sys/class/hwmon/hwmon6/device/gpu_busy_percent";
          "format" = "{}% ";
          "interval" = 1;
          states = {
            warning = 80;
            critical = 90;
          };
        };
        "disk" = {
          "interval" = 30;
          "unit" = "GB";
          "format" = "{free} ";
        };
        "mpris" = {
          "format" = "{player_icon}   <i>{dynamic}</i>";
          "format-paused" = "{status_icon}   <i>{dynamic}</i>";
          "dynamic-order" = [
            "title"
            "position"
            "length"
          ];
          "title-len" = 15;
          "player-icons" = {
            "default" = "";
          };
          "status-icons" = {
            "paused" = "";
          };
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
        "cpu" = {
          "interval" = 1;
          "format" = "{usage}% ";
          "states" = {
            "warning" = 80;
            "critical" = 90;
          };
        };
        "memory" = {
          "interval" = 1;
          "format" = "{}% ";
          "states" = {
            "warning" = 80;
            "critical" = 90;
          };
        };
        "temperature" = {
          "interval" = 1;
          "critical-threshold" = 85;
          "format" = "{temperatureC}°C ";
        };
        "clock" = {
          "interval" = 1;
          "format" = "{:%a %d %b,  %H:%M}";
        };
        "battery" = {
          "interval" = 60;
          "states" = {
            "warning" = 30;
            "critical" = 15;
          };
          "format" = "{capacity}% {icon}";
          "format-icons" = [
            ""
            ""
            ""
            ""
            ""
          ];
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
        "custom/vpn" = {
          "exec" = " $(nmcli connection show | awk '$3 == \" vpn \" && $4 != \" - -\" {print $1}')";
          "interval" = 5;
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
            #!/usr/bin/env bash
            set -euo pipefail
            readonly ENABLED=
            readonly DISABLED=
            dbus-monitor path='/org/freedesktop/Notifications',interface='org.freedesktop.DBus.Properties',member='PropertiesChanged' --profile |
              while read -r _; do
                PAUSED="$(dunstctl is-paused)"
                if [ "$PAUSED" == 'false' ]; then
                  CLASS="enabled"
                  TEXT="$ENABLED"
                else
                  CLASS="disabled"
                  TEXT="$DISABLED"
                  COUNT="$(dunstctl count waiting)"
                  if [ "$COUNT" != '0' ]; then
                    TEXT="$DISABLED ($COUNT)"
                  fi
                fi
                printf '%s\n' "$TEXT"
              done
          '';
          "on-click" = "dunstctl set-paused toggle";
          "restart-interval" = 1;
        };
      }
    ];
  };
}
