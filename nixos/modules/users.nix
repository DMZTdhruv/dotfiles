{pkgs, ...}: {
  users.users.yourname = {
    isNormalUser = true;
    description = "Working for innovation";
    extraGroups = ["networkmanager" "adbusers" "wheel" "input" "audio" "seat" "docker"];
    shell = pkgs.fish;
  };
}
