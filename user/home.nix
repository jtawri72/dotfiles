{
  config,
  pkgs,
  ...
}: {
  imports = [
    ./programs
    ./services
  ];

  home = {
    username = "marika";
    homeDirectory = "/home/marika";
    stateVersion = "25.05";
  };
}
