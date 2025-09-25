{ config, pkgs, ... }:

{
  home.username = "hrtty";
  home.homeDirectory = "/home/hrtty";

  home.packages = with pkgs; [

    # Core Shell
    zsh
    oh-my-zsh
    nh

    # Terminal Navigation
    fzf           # Fuzzy finder because remember is for dorks
    ripgrep-all   # Better ripgrep (which is a better grep!)
    tealdeer      # Fast manual in rust
    tre           # Directory hierarchy
    zoxide        # Ultra-cd
    tmux          # *ALL* the terminals
    
    # Terminal Information
    bandwhich     # Bandwidth stats
    btop          # Resource monitoring
    diff-so-fancy # Git differences that look good
    duf           # Disk Utility Info
    dua           # Disk analyzer
    eza           # better exa
    fdupes        # Find duplicates
    hyperfine     # Time commands
    neofetch      # Unix Porn must have
    procs         # Process monitor
    scc           # Code Statistics

    # Terminal Down/Upload
    aria          # This is aria2 dw
    bat           # Better Cat meow :3

    # Command Line Tools
    sd            # Find and replace tool
    just          # Simpler Make Files
    jq            # Easily Query JSON from CLI
    httpie        # Command Line HTTP client

  ];

  home.stateVersion = "25.05"; # DO NOT CHANGE
}
