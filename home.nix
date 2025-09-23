{ config, pkgs, ... }:

{
  home.username = "hrtty";
  home.homeDirectory = "/home/hrtty";

  home.packages = with pkgs; [
    neofetch
  ];

  home.stateVersion = "25.05"; # DO NOT CHANGE
}
