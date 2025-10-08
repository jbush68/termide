{ config, pkgs, nixvim, ... }:

{
################ Imports ################

  imports = [
    nixvim.homeModules.nixvim
  ];

################ Home Directory ################

  home = {
    
    username = "hrtty";
    homeDirectory = "/home/hrtty";
    # Default Home Files & Directories Here
    file = import ./users/hrtty-homefiles.nix;

  };

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
    delta         # Git Highlighting 
    duf           # Disk Utility Info
    dua           # Disk analyzer
    eza           # better exa
    fdupes        # Find duplicates
    hyperfine     # Time commands
    fastfetch     # Unix Porn must have - now ?% faster :3
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
    
    # Git, Github, and more
    git
    gh
    
    # Coding Packages - TODO: Modularize
    typescript

  ];

################ PROGRAM CONFIGURATION  ################

  programs = {

    home-manager.enable = true;
    
    ### Core Shell ###
    zsh = import ./configs/zsh/hrtty-zsh.nix;
    oh-my-posh = import ./configs/zsh/hrtty-omp.nix { inherit pkgs; };
    # nh = import ./configs/nh/hrtty-nh.nix; -> TODO: WHY BROKEN

    ### Terminal Tools ###
    fastfetch = import ./configs/terminfo/fastfetch/hrtty-fast.nix { inherit pkgs; };
    eza = import ./configs/terminfo/hrtty-eza.nix;
    btop = import ./configs/terminfo/hrtty-btop.nix;
    tmux = import ./configs/terminfo/hrtty-tmux.nix { inherit pkgs; };
    fzf = import ./configs/zsh/hrtty-fzf.nix;
    fd = import ./configs/zsh/hrtty-fd.nix;

    ripgrep-all = { enable = true; }; # Future Note: Create file if using custom adapters
    tealdeer = { enable = true; }; # Default config... "good enough"
    zoxide = {
      enable = true;
      enableZshIntegration = true;
    };

    ### Version Control ###
    git = import ./configs/versionctrl/hrtty-git.nix;

    gh = { enable = true; }; # Further configure if using multiple hosts

    ### Neovim ###
    nixvim = import ./configs/neovim/kickstart-nixvim/nixvim.nix { inherit pkgs config; };

  };

################ STATE VERSION ################

  home.stateVersion = "25.05"; # DO NOT CHANGE
}
