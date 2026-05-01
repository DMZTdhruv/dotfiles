{
  config,
  lib,
  pkgs,
  ...
}: {
  environment.systemPackages = with pkgs; [
    android-tools
    pgadmin4
    acpi
    nix-output-monitor
    gcc
    kanshi
    gnumake
    home-manager
    wireplumber
    vulkan-tools
    libva-utils
    intel-gpu-tools
  ];
}
