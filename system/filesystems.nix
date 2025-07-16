{
  config,
  pkgs,
  ...
}: {
  fileSystems = {
    "/" = {
      fsType = "ext4";
      device = "/dev/disk/by-label/NIXOS";
    };

    "/boot" = {
      fsType = "vfat";
      device = "/dev/disk/by-label/ESP";
      options = ["fmask=0077" "dmask=0077"];
    };

    "/home" = {
      fsType = "ext4";
      device = "/dev/disk/by-label/HOME";
    };

    "/mnt/windows" = {
      fsType = "ntfs-3g";
      device = "/dev/nvme0n1p3";
      options = ["rw" "uid=1000"];
    };
  };
}
