{
  config,
  pkgs,
  ...
}: let
  font = "JetBrainsMono Nerd Font";
  size = 11;
in {
  programs.foot = {
    enable = true;
    settings.main = {
      pad = "4x4 center";
      font = "${font}:size=${builtins.toString size}:style=SemiBold";
      font-bold = "${font}:size=${builtins.toString size}:style=Bold";
      font-italic = "${font}:size=${builtins.toString size}:style=SemiBold Italic";
      font-bold-italic = "${font}:size=${builtins.toString size}:style=Bold Italic";
    };
  };
}
