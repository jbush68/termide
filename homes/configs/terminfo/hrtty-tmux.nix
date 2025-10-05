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
    # Throw all of the extraconfig prior to any run commands, extraConfig option appends to end of file after Run commands and breaks a few plugins that need options before run
    {
      plugin = pkgs.tmuxPlugins.weather;
      extraConfig = ''
        set -g @fuzzback-hide-preview 1
        set -g @extrakto_key `
        set -g @fuzzback-popup 1
        set -g @tilish-dmenu 'on'
        TMUX_FZF_SWITCH_CURRENT=1
        TMUX_FZF_LAUNCH_KEY="C-f"
        set -g @tilish-default 'main-vertical'
        set -g @tilish-createauto 'off'
        set -g @tilish-project '$HOME/projects'
        set -g @tilish-enforce 'none'
        set -g @tmux-weather-interval 15
        set -g @tmux-weather-location "Chicago"
        set -g @tmux-weather-units "m"
        set -g @tmux-weather-format "%l:+%C+%w+%t"
        set -g @sysstat_cpu_color_low "colour8"
        set -g @sysstat_cpu_color_medium "yellow"
        set -g @sysstat_cpu_color_stress "red"
        set -g @sysstat_mem_color_low "colour8"
        set -g @sysstat_mem_color_medium "yellow"
        set -g @sysstat_mem_color_stress "red"
        set -g status-bg default
        set -g status-fg default
        set -g @sysstat_cpu_view_tmpl "#[bg=#{cpu.color},fg=brightWhite] CPU:#{cpu.pused} "
        set -g @sysstat_mem_view_tmpl "#[bg=#{mem.color},fg=brightWhite] MEM:#{mem.pused} "
        set -g status-right-length 70
        set -g status-left-length 50
        set -g allow-rename off
        set -g pane-border-style "fg=lightCyan"
        set -g pane-active-border-style "fg=lightCyan"
        set -g pane-border-status top
        set -g pane-border-format "\u2562 #{pane_title} \u255f"
        set -g status-right "#[fg=brightWhite,bg=blue] #{weather} #[default] #{sysstat_cpu}#[default] #{sysstat_mem}#[default] #{tmux_mode_indicator}"
        set -g status-left "#[fg=black,bg=yellow] %F #[fg=yellow,bg=green]\u258C#[default] %T #[fg=green,bg=colour13]\u258C#[fg=black,bg=colour13] #(sh /etc/nixos/homes/configs/terminfo/uptimeabbr.sh) #[default]\u2551 [#S] "
      '';
    }
    pkgs.tmuxPlugins.tilish
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


  # Extraconfig

}
