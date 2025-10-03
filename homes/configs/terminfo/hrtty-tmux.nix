{ pkgs, ... }:

{
  ### Top Level Config ###
  
  # aggressiveResize
  baseIndex = 1;
  clock24 = true;
  # customPaneNavigationAndResize
  # disableConfirmationPrompt
  enable = true;
  # esapeTime -> Set by sensible
  # focusEvents
  historyLimit = 5000;
  # keyMode
  # mouse
  # newSession
  # package
  prefix = "C-a";
  # resizeAmount
  # reverseSplit
  # secureSocket
  sensibleOnTop = true;
  # shell
  # shortcut
  # terminal

  
  ### Tmux Session Managers ### 

  tmuxp = {
    enable = true;
  };

  tmuxinator = {
    enable = false;
  };


  ### Tmux Plugins ###
  plugins = [
  
    # Todo: Setup Pass
    pkgs.tmuxPlugins.tilish
    {
      plugin = pkgs.tmuxPlugins.weather;
      extraConfig = ''
        set -g status-right "#{weather} #(echo $USER is a stinker)"
      '';
    }
    pkgs.tmuxPlugins.sysstat
    pkgs.tmuxPlugins.sidebar
    pkgs.tmuxPlugins.logging
    pkgs.tmuxPlugins.tmux-fzf
    pkgs.tmuxPlugins.sensible
    pkgs.tmuxPlugins.fuzzback
    pkgs.tmuxPlugins.extrakto
    pkgs.tmuxPlugins.sessionist
    pkgs.tmuxPlugins.mode-indicator        

  ];


  extraConfig = ''
    set -g @tilish-default 'main-vertical'
    set -g @tilish-enforce 'none'
    set -g @tilish-createauto 'off'
    set -g @tilish-project '$HOME/projects'
    set -g @tilish-dmenu 'on'
    TMUX_FZF_LAUNCH_KEY="C-f"
    TMUX_FZF_SWITCH_CURRENT=1
    set -g @fuzzback-popup 1
    set -g @fuzzback-hide-preview 1
    set -g @extrakto_key `
  '';

}
