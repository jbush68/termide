{ config, pkgs, ... }:

{
  home.username = "hrtty";
  home.homeDirectory = "/home/hrtty";


################ User Packages ################

  home.packages = with pkgs; [

    # Core Shell
    zsh
    oh-my-posh
    nh

    # Terminal Navigation
    fzf           # Fuzzy finder because remember is for dorks
    fd            # Make fzf output better
    ripgrep-all   # Better ripgrep (which is a better grep!)
    tealdeer      # Fast manual in rust
    tre-command   # Directory hierarchy
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

################ PROGRAM CONFIGURATION  ################

  programs = {

    home-manager.enable = true;

    zsh = import ./configs/zsh/hrtty-zsh.nix;
    oh-my-posh = import ./configs/zsh/hrtty-omp.nix;
    # nh = import ./configs/nh/hrtty-nh.nix; -> TODO: WHY BROKEN

    fzf = import ./configs/zsh/hrtty-fzf.nix;
    fd = import ./configs/zsh/hrtty-fd.nix;
    ripgrep-all = { enable = true; }; # Future Note: Create file if using custom adapters
    tealdeer = { enable = true; }; # Default config... "good enough"
    zoxide = {
      enable = true;
      enableZshIntegration = true;
    };
    #tmux

    bandwhich = { enable = true; };
    btop = import ./configs/terminfo/hrtty-btop.nix;

  };

  home.stateVersion = "25.05"; # DO NOT CHANGE
}
