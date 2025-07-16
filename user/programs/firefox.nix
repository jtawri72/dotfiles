{
  config,
  pkgs,
  ...
}: {
  programs.firefox = {
    enable = true;
    profiles.marika.name = "marika";
  };
}
