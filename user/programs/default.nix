{
  config,
  pkgs,
  ...
}: {
  imports = [
    ./firefox.nix
    ./fish.nix
    ./foot.nix
    ./git.nix
    ./helix.nix
    ./hyprland.nix
  ];
}
