{ config, pkgs, ... }:

{ 
  environment.systemPackages = with pkgs; [
    bash
    bashCompletion
    chromium
    dmenu
    git
    i3
    i3lock
    i3status
    libnotify
    notify-osd
    xfce.terminal
    vim
  ];

  services.xserver = {
    displayManager = {
      auto = {
        enable = true;
        user = "michael";
      };
    };

    enable = true;
    layout = "gb";
    windowManager = {
      i3.enable = true;
      default = "i3";
    };

    desktopManager = {
      default = "none";
      xterm.enable = false;
    };
    synaptics.enable=true;
  };
}
