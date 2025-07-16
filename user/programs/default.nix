{
  config,
  pkgs,
  ...
}: {
  imports = [
    ./firefox.nix
    ./foot.nix
    ./git.nix
    ./helix.nix
    ./hyprland.nix
  ];
}
