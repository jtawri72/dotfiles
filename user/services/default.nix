{
  config,
  pkgs,
  ...
}: {
  imports = [
    ./gammastep.nix
    ./hyprpaper.nix
  ];
}
