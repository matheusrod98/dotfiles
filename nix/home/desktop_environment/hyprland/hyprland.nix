{ pkgs, ... }:

{
  home.packages = with pkgs; [
    hyprcursor
  ];

  wayland.windowManager.hyprland = {
    enable = true;
    xwayland.enable = true;
    systemd.variables = [ "--all" ];
    extraConfig = "
      env = QT_QPA_PLATFORM,wayland;xcb
      env = QT_QPA_PLATFORMTHEME,qt5ct
      env = XDG_CURRENT_DESKTOP,Hyprland
      env = XDG_SESSION_TYPE,wayland
      env = XDG_SESSION_DESKTOP,Hyprland
      env = GDK_BACKEND,wayland,x11,*
      env = SDL_VIDEODRIVER,wayland
      env = CLUTTER_BACKEND,wayland
    ";
    settings = {
      exec-once = [
        "systemctl --user import-environment QT_QPA_PLATFORMTHEME"
        "dbus-update-activation-environment --systemd --all"
        "${pkgs.polkit_gnome}/libexec/polkit-gnome-authentication-agent-1"
        "waybar"
        "dunst"
        "nm-applet"
        "blueman-applet"
        "skypeforlinux"
        "discord"
        "pritunl-client-electron"
        "systemctl --user start warp-taskbar"
      ];
      bindm = [
        "SUPER, mouse:272, movewindow"
        "SUPER, mouse:273, resizewindow"
      ];
      bindl = [
        ",XF86MonBrightnessUp, exec, brightnessctl set +20"
        ",XF86MonBrightnessDown, exec, brightnessctl set 20-"
        ",XF86AudioPlay, exec, playerctl play-pause"
        ",XF86AudioPause, exec, playerctl pause"
        ",XF86AudioStop, exec, playerctl stop"
        ",XF86AudioNext, exec, playerctl next"
        ",XF86AudioPrev, exec, playerctl previous"
        ",XF86AudioMute, exec, wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle"
        ",XF86AudioRaiseVolume, exec, wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%+"
        ",XF86AudioLowerVolume, exec, wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%-"
      ];
      bind = [
        "SHIFT, XF86AudioMute, exec, wpctl set-mute @DEFAULT_AUDIO_SOURCE@ toggle"
        "SHIFT, XF86AudioRaiseVolume, exec, wpctl set-volume @DEFAULT_AUDIO_SOURCE@ 5%+"
        "SHIFT, XF86AudioLowerVolume, exec, wpctl set-volume @DEFAULT_AUDIO_SOURCE@ 5%-"
        "SUPER, B, exec, brave"
        "SUPER, RETURN, exec, ghostty"
        "SUPER SHIFT, RETURN, exec, [float; size 1280 720; center] ghostty"
        "SUPER, F, exec, thunar"
        "SUPER, A, exec, [float; size 1280 720; center] pavucontrol"
        "SUPER, M, exec, ghostty --command=btop"
        "SUPER, E, exec, ghostty --command=nvim"
        "SUPER, N, exec, obsidian"
        "SUPER, C, exec, [float; size 900 600; center] qalculate-gtk"
        "SUPER, ESCAPE, exec, hyprlock"
        ",Print, exec, grim -c -l 0 - | satty -f -"
        "SUPER, SPACE, exec, walker"
        "SUPER, W, exec, walker --modules windows"
        "SUPER, V, exec, walker --modules clipboard"
        "SUPER, code:61, exec, walker --modules emoji"
        # "SUPER SHIFT, ESCAPE, exec, rofi -show power"
        "SUPER, O, exec, walker --modules finder"
        "SUPER, Q, killactive,"
        "SUPER, U, togglefloating,"
        "SUPER, R, togglesplit,"
        "SUPER, H, movefocus, l"
        "SUPER, L, movefocus, r"
        "SUPER, K, movefocus, u"
        "SUPER, J, movefocus, d"
        "SUPER SHIFT, H, movewindoworgroup, l"
        "SUPER SHIFT, L, movewindoworgroup, r"
        "SUPER SHIFT, K, movewindoworgroup, u"
        "SUPER SHIFT, J, movewindoworgroup, d"
        "SUPER, left, focusmonitor, l"
        "SUPER, right, focusmonitor, r"
        "SUPER, up, focusmonitor, u"
        "SUPER, down, focusmonitor, d"
        "SUPER SHIFT, left, movecurrentworkspacetomonitor, l"
        "SUPER SHIFT, right, movecurrentworkspacetomonitor, r"
        "SUPER SHIFT, up, movecurrentworkspacetomonitor, u"
        "SUPER SHIFT, down, movecurrentworkspacetomonitor, d"
        "SUPER SHIFT, P, pin"
        "SUPER CTRL, L, resizeactive, 35 0"
        "SUPER CTRL, H, resizeactive, -35 0"
        "SUPER CTRL, K, resizeactive, 0 -35"
        "SUPER CTRL, J, resizeactive, 0 35"
        "SUPER, G, togglegroup"
        "SUPER SHIFT, G, lockactivegroup, toggle"
        "SUPER, TAB, changegroupactive, f"
        "SUPER SHIFT, TAB, changegroupactive, b"
        "SUPER, 1, workspace, 1"
        "SUPER, 2, workspace, 2"
        "SUPER, 3, workspace, 3"
        "SUPER, 4, workspace, 4"
        "SUPER, 5, workspace, 5"
        "SUPER, 6, workspace, 6"
        "SUPER, 7, workspace, 7"
        "SUPER, 8, workspace, 8"
        "SUPER, 9, workspace, 9"
        "SUPER, 0, workspace, 10"
        "SUPER, code:60, workspace, e+1"
        "SUPER, code:59, workspace, e-1"
        "SUPER SHIFT, 1, movetoworkspace, 1"
        "SUPER SHIFT, 2, movetoworkspace, 2"
        "SUPER SHIFT, 3, movetoworkspace, 3"
        "SUPER SHIFT, 4, movetoworkspace, 4"
        "SUPER SHIFT, 5, movetoworkspace, 5"
        "SUPER SHIFT, 6, movetoworkspace, 6"
        "SUPER SHIFT, 7, movetoworkspace, 7"
        "SUPER SHIFT, 8, movetoworkspace, 8"
        "SUPER SHIFT, 9, movetoworkspace, 9"
        "SUPER SHIFT, 0, movetoworkspace, 10"
        "SUPER SHIFT, code:60, movetoworkspace, e+1"
        "SUPER SHIFT, code:59, movetoworkspace, e-1"
        "SUPER, MINUS, movetoworkspace, special"
        "SUPER, EQUAL, togglespecialworkspace"
        "SUPER, mouse:272, movewindow"
        "SUPER, Y, fullscreen, 0"
        "CONTROL ALT, A, exec, dunstctl action"
        "CONTROL ALT, P, exec, dunstctl history-pop"
        "CONTROL ALT, C, exec, dunstctl close"
        "CONTROL ALT, U, exec, dunstctl context"
        "CONTROL ALT, D, exec, dunstctl history-rm"
        "CONTROL ALT SHIFT, C, exec, dunstctl close-all"
        "CONTROL ALT SHIFT, D, exec, dunstctl history-clear"
        "CONTROL ALT SHIFT, N, exec, dunstctl set-paused toggle"
      ];
      dwindle = {
        force_split = "2";
        preserve_split = true;
      };
      input = {
        touchpad = {
          natural_scroll = true;
        };
        kb_layout = "us";
        kb_variant = "intl";
        kb_options = "caps:escape,shift:both_capslock";
      };
      monitor = ", preferred, auto, 1";
      decoration = {
        rounding = "6";
      };
      general = {
        gaps_in = "6";
        gaps_out = "6";
        border_size = "2";
        resize_on_border = true;
      };
      workspace = [
        "w[tv1], gapsout:0, gapsin:0"
        "f[1], gapsout:0, gapsin:0"
      ];
      windowrulev2 = [
        "bordersize 0, floating:0, onworkspace:w[tv1]"
        "rounding 0, floating:0, onworkspace:w[tv1]"
        "bordersize 0, floating:0, onworkspace:f[1]"
        "rounding 0, floating:0, onworkspace:f[1]"
      ];
      misc = {
        disable_hyprland_logo = true;
        disable_splash_rendering = true;
        focus_on_activate = true;
      };
      gestures = {
        workspace_swipe = true;
      };
      animation = [
        "workspaces,1,2,default"
        "windows,1,2,default"
      ];
    };
  };
}
