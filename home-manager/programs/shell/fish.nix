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
    delete-messages = "psql -U postgres -d myorbit -c 'Delete from chat.message'";
    laude = "claude";
  };
in {
  programs.fish = {
    enable = true;
    shellAliases = alias;

    interactiveShellInit = ''
      starship init fish | source
      fish_add_path ~/.npm-global/bin
    '';
  };
}
