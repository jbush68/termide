{
### Top Level Config ###

  enable = true;
  # enableBashCompletion
  enableCompletion = true;
  # enableGlobalCompInit
  # enableLsColors = true;
  # histFile
  histSize = 5000;
  # interactiveShellInit
  # loginShellInit
  # promptInit
  # setOptions
  # shellAliases
  # shellInit
  # vteIntegration

### Auto-Env ###

  zsh-autoenv = {
    enable = true;
    # package
  };

### Syntax-Highlighting ###

  syntaxHighlighting = {
    enable = true;
    highlighters = [ "main" "brackets" "root" ];
    # patterns
    # styles
  };

### ohMyZsh ###

  ohMyZsh = {
    # cacheDir
    # custom
    # customPkgs
    enable = false;
    # package
    # plugins
    # preLoaded
    # theme
  };

### AutoSuggestions ###

  # autosuggestions = {
    # async
    # enable = true;
    # extraConfig
    # highlightStyle = "fg=cyan";
    # strategy = [ "completion" ]; 
  # };

}
