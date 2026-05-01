{
  pkgs,
  inputs,
  ...
}: {
  imports = [
    ./programs/modules
    ./programs/shell
    inputs.noctalia.homeModules.default
    # inputs.dank-material-shell.homeModules.dank-material-shell
    # inputs.caelestia-shell.homeManagerModules.default
  ];

  gtk = {
    enable = true;
    iconTheme = {
      name = "Adwaita";
      package = pkgs.adwaita-icon-theme;
    };
  };

  home.sessionVariables = {
    JAVA_HOME = "${pkgs.jdk21}/lib/openjdk";
  };
  nixpkgs.config.allowUnfree = true;
  programs.home-manager.enable = true;
}
