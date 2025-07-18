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
    settings = {
      main = {
        pad = "4x4 center";
        font = "${font}:size=${builtins.toString size}:style=SemiBold";
        font-bold = "${font}:size=${builtins.toString size}:style=Bold";
        font-italic = "${font}:size=${builtins.toString size}:style=SemiBold Italic";
        font-bold-italic = "${font}:size=${builtins.toString size}:style=Bold Italic";
      };
      cursor.color = "2e3440 d8dee9";
      colors = {
        foreground = "d8dee9";
        background = "2e3440";

        regular0 = "3b4252";
        regular1 = "bf616a";
        regular2 = "a3be8c";
        regular3 = "ebcb8b";
        regular4 = "81a1c1";
        regular5 = "b48ead";
        regular6 = "88c0d0";
        regular7 = "e5e9f0";

        bright0 = "4c566a";
        bright1 = "bf616a";
        bright2 = "a3be8c";
        bright3 = "ebcb8b";
        bright4 = "81a1c1";
        bright5 = "b48ead";
        bright6 = "8fbcbb";
        bright7 = "eceff4";

        dim0 = "373e4d";
        dim1 = "94545d";
        dim2 = "809575";
        dim3 = "b29e75";
        dim4 = "68809a";
        dim5 = "8c738c";
        dim6 = "6d96a5";
        dim7 = "aeb3bb";
      };
    };
  };
}
