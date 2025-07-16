{
  config,
  pkgs,
  ...
}: {
  boot = {
    kernelModules = ["kvm-intel"];
    extraModulePackages = [];
    initrd = {
      kernelModules = [];
      availableKernelModules = ["xhci_pci" "ahci" "nvme" "usbhid" "usb_storage" "sd_mod" "rtsx_pci_sdmmc"];
    };
    loader = {
      systemd-boot.enable = true;
      efi.canTouchEfiVariables = true;
    };
  };
}
