{...}: {
  imports = [
    ./hardware.nix
    ./packages.nix
    ./programs.nix
    ./service.nix
    ./users.nix
    ./fonts.nix
    ./networking.nix
  ];
}
