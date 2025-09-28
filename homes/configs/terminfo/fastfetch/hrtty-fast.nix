{ pkgs, ... }:

{
  ### Top Level Config ###

  enable = true;
  # package
  settings = pkgs.lib.importJSON ./defatulfast.jsonc;

}
