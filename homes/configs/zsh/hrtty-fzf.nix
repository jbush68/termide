{
  ### Top Level Config ###

  DirWidgetCommand = "fd -t d . $HOME";
  # DirWidgetOptions
  colors = {
    "fg" = -1;
    "fg+" = 15;
    "bg" = -1;
    "bg+" = 8;
    "hl" = 4;
    "hl+" = 12;
    "marker" = 10;
    "prompt" = 1;
    "spinner" = 3;
    "pointer" = 5;
    "border" = 7;
    "header" = 14;
    "info" = 6;    
  };
  defaultCommand = "fd . $HOME";
  defaultOptions = [
    '--border="sharp"'
    '--border-label="< Fuzzy Finder >"'
    '--border-label-pos="0"'
    '--padding="1,1,0,1"'
    '--prompt="> "'
    '--marker="~"'
    '--pointer=">"'
    '--info"right"'
  ];
  enable = true;
  # enableBashIntegration
  # enableFishIntegration
  enableZshIntegration = true;
  fileWidgetCommand = "fd . $HOME";
  # fileWidgetOptions
  # historyWidgetOptions
  # package


  ### TMUX ###
  tmux = {
    enableShellIntegration = true;
    shellIntegrationOptions = [ "-p 50%,40%" ];
  };

}
