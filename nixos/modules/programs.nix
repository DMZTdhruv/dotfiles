{...}: {
  programs = {
    hyprland = {
      enable = true;
      withUWSM = true;
      xwayland.enable = true;
    };
    zsh.enable = false;
    fish.enable = true;

    nix-ld = {enable = true;};
  };
}
