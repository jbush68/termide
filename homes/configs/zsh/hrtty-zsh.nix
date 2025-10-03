{
  ### Top Level Config ###
 
  autocd = true;
  # cdpath
  # completionInit
  # defaultKeymap
  dirHashes = { systemconfigs = "./etc/nixos"; };
  dotDir = "~/.config/zsh";
  enable = true;
  enableCompletion = true;
  # enableVteIntegration
  # envExtra
  # initContent
  # localVariables
  # loginExtra
  # lougoutExtra
  # package
  # plugins
  # prezto
  # profileExtra
  # sessionVariables
  # setOptions
  # shellAliases
  # shellGlobalAliases
  # siteFunctions


  ### Antidote ###
  # Zsh Plugin manager
  
  
  ### AutoSuggestion ###
  autosuggestion = {
    enable = true;
    highlight = "fg=cyan,underline";
    strategy = [ "completion" "history" ];
  };


  ### History ###
  history = {
    append = true;
    expireDuplicatesFirst = true;
    extended = true;
    # findNoDups
    # ignoreAllDups
    ignoreDups = true;
    # ignorePatterns
    # ignoreSpace
    path = ".config/zsh/.zsh_history";
    save = 7500;
    saveNoDups = true;
    share = true;
    size = 7500;
  };
  

  ### History Substring Search ###
  historySubstringSearch = {
    enable = true;
    #searchDownKey
    #searchUpKey
  };


  ### Oh My Zsh ###
  # Replaced by Oh-My-Posh ($user-omp.nix)


  ### Plugins ###
  # Do Not Use (plugin managers are better for this)


  ### Prezto ###
  # Anti-pattern --> Prezto is a configuration framework... which this already is


  ### Syntax Highlighting ###
  syntaxHighlighting = {
    enable = true;
    highlighters = [ "main" "brackets" "root" ];
    # package
    # patterns
    # styles
  };

  
  ### Zplug ###
  # *Another* plugin manager


  ### Zprof ###
  zprof = {
    enable = false; # Only enable for debugging long inits
  };


  ### Zsh-Abbr ###
  # Manages aliases and abbreviations

}
