{
  config,
  lib,
  pkgs,
  ...
}: let
  alias = {
    icat = "kitty icat";
    wpset = "swww img";
    tmux = "tmux -u";
    cls = "clear";
    bt = "bluetoothctl";
    nv = "nvim";
    ghty = "cd ~/.config/ghostty/ && nvim";
    hypr = "cd ~/.config/hypr/ && nvim";
    home-switch = "home-manager switch";
    nix-switch = "sudo nixos-rebuild switch";
    nix-gc = "sudo nix-collect-garbage --delete-old";
    wall-changer = "~/code/dmzt/bash/wall-changer";
    laude = "claude";
  };
in {
  programs.zsh = {
    enable = false;
    enableCompletion = true;
    autosuggestion.enable = true;
    syntaxHighlighting.enable = true;
    shellAliases = alias;

    history.size = 10000;
    initExtra = ''
      eval "$(starship init zsh)"
    '';
  };
}
