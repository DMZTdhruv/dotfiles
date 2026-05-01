{config, lib, pkgs, ...}: {
  networking = {
    hostName = "yourname";
    networkmanager.enable = true;  # Uses wpa_supplicant as backend by default
    firewall = {
      enable = false;
      # allowedUDPPorts = [ ... ];
      # allowedTCPPorts = [ ... ];
    };
  };

  # boot.extraModulePackages = with config.boot.kernelPackages; [
  #   rtl8821au  # Alternative Realtek driver
  # ];
}
