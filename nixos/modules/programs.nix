{...}: {
  programs = {
    firefox.enable = true;
    hyprland = {
      enable = true;
      xwayland.enable = true;
    };
    niri.enable = true;
    adb.enable = true;
    zsh.enable = true;

    nix-ld = {enable = true;};
  };
}
