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
  plugins = with pkgs.tmuxPlugins; [
  
    # Todo: Setup Pass
    tilish
    weather
    sysstat
    sidebar
    logging
    tmux-fzf
    sensible
    fuzzback
    extrakto
    sessionist
    mode-indicator        

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
    set -g @tmux-weather-interval 5
    set -g @tmux-weather-location "Chicago"
    set -g @tmux-weather-units "m"
    set -g @tmux-weather-format "%l:+%C+%w+%t"
    # set -g @sysstat_cpu_color_low "brightBlack"
    # set -g @sysstat_cpu_color_medium "yellow"
    # set -g @sysstat_cpu_color_stress "red"
    # set -g @sysstat_mem_color_low "brightBlack"
    # set -g @sysstat_mem_color_medium "yellow"
    # set -g @sysstat_mem_color_stress "red"
    # set -g @sysstat_cpu_view_tmpl '#[bg=#{cpu.color},fg=white]CPU:#{cpu.pused}'
    # set -g @sysstat_mem_view_tmpl '#[bg=#{mem.color},fg=white]CPU:#{mem.pused}'
    set -g status-right '#{weather} #(echo $USER)'
  '';

}
