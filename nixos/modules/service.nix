{pkgs, ...}: {
  services = {
    supergfxd.enable = true;
    upower.enable = true;
    power-profiles-daemon.enable = true;
    thermald.enable = true; # Intel thermal management daemon
    smartd.enable = true; # S.M.A.R.T. disk health monitoring
    cloudflare-warp.enable = true; # Cloudflare WARP VPN
    seatd.enable = true;
    xserver = {
      enable = true;
      xkb.layout = "us";
      videoDrivers = ["modesetting" "nvidia"]; # modesetting for Intel, nvidia for dGPU
    };
    displayManager.gdm.enable = true;
    pipewire = {
      enable = true;
      alsa.enable = true;
      alsa.support32Bit = true;
      pulse.enable = true;
      jack.enable = true;
      audio.enable = true;
      wireplumber.enable = true;
    };
    pulseaudio = {
      enable = false;

      extraConfig = ''
        unload-module module-udev-detect
        load-module module-udev-detect tsched=0
      '';
    };
    openssh = {enable = true;};
    libinput = {
      enable = true;
      mouse = {accelProfile = "flat";};
      touchpad = {accelProfile = "flat";};
    };
    redis = {
      servers."" = {
        enable = true;
        bind = "0.0.0.0";
        port = 6379;
        settings = {
          save = ["900 1" "300 10" "60 10000"];
          maxmemory = "256mb";
          maxmemory-policy = "allkeys-lru";
          appendonly = "yes";
        };
      };
    };
    postgresql = {
      enable = true;
      enableTCPIP = true;
      settings.port = 5432;
      ensureDatabases = ["postgres" "myorbit"];
      authentication = pkgs.lib.mkOverride 10 ''
        #type database  DBuser  auth-method
        local all       all     trust
        # ipv4
        host  all      all     127.0.0.1/32   trust
        # ipv6
        host all       all     ::1/128        trust
      '';
      extensions = with pkgs.postgresql_16.pkgs; [pgvector postgis];
    };
  };

  environment = {
    sessionVariables = {
      NIXOS_OZONE_WL = "1";
      # Intel iGPU (Prime Offload) - NVIDIA sleeps until nvidia-offload used
      LIBVA_DRIVER_NAME = "iHD"; # Intel VA-API for video decode
      # AQ_DRM_DEVICES removed - let Hyprland auto-detect GPUs
      # Hyprland XDG settings
      XDG_CURRENT_DESKTOP = "Hyprland";
      XDG_SESSION_TYPE = "wayland";
      XDG_SESSION_DESKTOP = "Hyprland";
      # NVIDIA Wayland - critical for proper rendering
      GBM_BACKEND = "nvidia-drm";
      __GLX_VENDOR_LIBRARY_NAME = "nvidia";
    };

    variables = {EDITOR = "nvim";};
  };
  virtualisation.docker = {
    enable = true;
    autoPrune.enable = true;
  };
}
