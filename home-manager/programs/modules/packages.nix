{pkgs, ...}: {
  home.packages = with pkgs; [
    # ───── Essential CLI Tools ─────
    python3
    imagemagick
    btop
    inxi
    brightnessctl
    cloc
    ripgrep
    cmatrix
    dysk
    fd
    fastfetch
    ffmpeg
    playerctl
    starship
    tree
    udisks
    unzip
    clang-tools
    wget
    wl-clipboard
    openssl
    claude-code
    ncdu

    # zsh-autosuggestions
    grim
    slurp
    bruno
    nwg-displays

    postman

    # ───── Terminal Emulators ─────
    ghostty
    tmux

    # ───── Editors & IDEs ─────
    vesktop
    # jdk21
    neovim

    # ───── Dev Tools ─────
    fzf
    git
    lazygit
    npkill
    adwaita-icon-theme

    # ───── Node & Rust Ecosystem ─────
    bun
    go
    nodePackages.pnpm
    nodePackages.yarn
    nodejs

    # ───── Browsers & GUI Apps ─────
    cbonsai
    brave
    htop
    kitty
    neo-cowsay
    xdg-desktop-portal-gtk

    # ───── Fonts & Icons ─────
    bibata-cursors
    font-awesome_5

    # ───── File Managers ─────
    yazi
    nautilus

    # ───── Hyprland Ecosystem ─────
    hyprlock
    hyprpaper
    hyprshot
    hyprsunset
    libnotify
    pavucontrol
    rofi
    waybar

    # ───── Media ─────
    cava
    obs-studio
    spotify
    vlc
    libinput

    # ───── LSPs & Formatters ─────

    # lua
    lua-language-server

    # typescript
    vtsls
    pciutils
    mesa-demos
    vulkan-tools
    wl-clipboard
    wlr-randr

    # go lang
    gopls
    golangci-lint
    go-tools

    # nix
    nil
    alejandra
    nwg-look
    matugen
    telegram-desktop
    xournalpp
    # VPN
    cloudflare-warp
  ];
}
