{pkgs, ...}: {
  xdg.desktopEntries.brave-browser = {
    name = "Brave Web Browser";
    genericName = "Web Browser";
    exec = "brave --disable-gpu-compositing --enable-features=VaapiVideoDecoder %U";
    terminal = false;
    icon = "brave-browser";
    categories = ["Network" "WebBrowser"];
    mimeType = [
      "application/pdf"
      "application/xhtml+xml"
      "text/html"
      "text/xml"
      "x-scheme-handler/http"
      "x-scheme-handler/https"
    ];
    startupNotify = true;
  };

  # Hide the default Brave desktop entry to avoid duplicate
  xdg.desktopEntries."com.brave.Browser" = {
    name = "Brave";
    noDisplay = true;
    exec = "brave";
  };
}
