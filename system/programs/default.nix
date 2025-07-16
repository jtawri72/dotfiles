{
  config,
  pkgs,
  ...
}: {
  imports = [
    ./fish.nix
    ./hyprland.nix
  ];
}
