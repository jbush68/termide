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
        set -g @tmux-weather-interval 5
        set -g @tmux-weather-location "Chicago"
        set -g @tmux-weather-units "m"
        set -g @tmux-weather-format "%l:+%C+%w+%t"
        set -g @sysstat_cpu_color_low "gray"
        set -g @sysstat_cpu_color_medium "yellow"
        set -g @sysstat_cpu_color_stress "red"
        set -g @sysstat_mem_color_low "gray"
        set -g @sysstat_mem_color_medium "yellow"
        set -g @sysstat_mem_color_stress "red"
        set -g @sysstat_cpu_view_tmpl "#[bg=#{cpu.color},fg=brightWhite]CPU:#{cpu.pused}"
        set -g @sysstat_mem_view_tmpl "#[bg=#{mem.color},fg=brightWhite]MEM:#{mem.pused}"
        set -g status-right-length 60
        set -g status-right "#{weather} #{sysstat_cpu} #{sysstat_mem}#[default] #(echo $USER)"
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
