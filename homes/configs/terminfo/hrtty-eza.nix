{
  ### Top Level Config ###
  
  colors = "always";
  enable = true;
  # enableBashIntegration
  # enableFishIntegration
  # enableIonIntegration
  # enableNushellIntegration
  enableZshIntegration = true;
  extraOptions = [
    "--long"
    "--color=always"
    "--color-scale-mode=fixed"
    "--icons=never"
    "--long"
    "--tree"
    "--list-dirs"
    "--level=2"
    "--bytes"
    "--smart-group"
    "--time-style=iso"
    "--total-size"
  ];
  git = true;
  # icons
  # package
  # theme
}
