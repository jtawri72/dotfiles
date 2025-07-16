{
  config,
  modulesPath,
  pkgs,
  ...
}: {
  imports = [
    (modulesPath + "/installer/scan/not-detected.nix")

    ./boot.nix
    ./filesystems.nix
    ./fonts
    ./hardware
    ./i18n.nix
    ./networking.nix
    ./programs
    ./security
    ./services
    ./time.nix
  ];

  nix.settings.experimental-features = ["flakes" "nix-command"];

  nixpkgs = {
    hostPlatform = "x86_64-linux";
    config.allowUnfree = true;
  };

  users.users.marika = {
    shell = pkgs.fish;
    isNormalUser = true;
    extraGroups = ["networkmanager" "wheel"];
  };

  system.stateVersion = "25.05";
}
