{pkgs, ...}: {
  programs.git = {
    enable = true;
    settings.user = {
      name = "DMZTyourname";
      email = "shruvparmar@gmail.com";
    };
  };
}
