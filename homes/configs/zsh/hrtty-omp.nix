{ pkgs, ... }:

{
### Top Level Config ###

  enable = true;
  # enableBashIntegration
  # enableFishIntegration
  # enableNuShellIntegration
  enableZshIntegration = true;
  # package
  settings = pkgs.lib.importJSON ./hrtty-ompconfig.jsonc;
  # useTheme = "stelbent.minimal";

}
