{
  config,
  pkgs,
  ...
}: {
  services.gammastep = {
    enable = true;
    provider = "manual";
    latitude = 22.57;
    longitude = 88.36;
  };
}
