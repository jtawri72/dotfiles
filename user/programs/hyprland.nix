{
  config,
  pkgs,
  ...
}: let
  workspaces = 6;
in {
  wayland.windowManager.hyprland = {
    enable = true;
    settings = {
      "$mod" = "SUPER";
      "$modShift" = "$mod SHIFT";

      monitor = [
        "eDP-1,disable"
        "HDMI-A-1,1920x1080@60,0x0,1"
      ];

      general = {
        border_size = 2;
        "col.active_border" = "rgb(8fbcbb)";
        "col.inactive_border" = "rgb(3b4252)";

        gaps_in = 4;
        gaps_out = 4;
      };

      decoration = {
        rounding = 4;
        blur.enabled = true;
        shadow.enabled = false;
      };

      ecosystem = {
        no_update_news = true;
        no_donation_nag = true;
      };

      bind =
        [
          "$mod, B, exec, firefox"
          "$mod, Return, exec, foot"

          "$mod, Q, killactive"
        ]
        ++ builtins.concatLists (builtins.genList (i: let
            ws = builtins.toString (i + 1);
          in [
            "$mod, ${ws}, workspace, ${ws}"
            "$modShift, ${ws}, movetoworkspacesilent, ${ws}"
          ])
          workspaces);
    };
  };
}
