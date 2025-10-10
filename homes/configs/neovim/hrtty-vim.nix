{ pkgs }:

{

  ### HM Specific Options ###
  enable = true;
  defaultEditor = true;
  # nixpkgs.useGlobalPackages
  vimdiffAlias = true; 
  wrapRc = false;

  ### Top Level Options ###
  enableMan = true;
  # package
  # colorscheme
  # path 
  viAlias = true;
  vimAlias = true;

  ### Environment Variables ###
  # env
  # extraPackages
  # extraPlugins
  # files
  # match
  # autoCmd
  # autoGroups

  ### PLUGINS ###
  plugins = import ./hrtty-vpg.nix;

  ### LSP ###
  lsp = {
    enable = true;
    inlayHints.enable = true;

    servers = {
      jsonls.enable = true;
      marksman.enable = true;
      nil_ls = true;
      nixd.enable = true;
      yamlls.enable = true;
      pyright = true;
    };
  };

  ### Lua Based Config ###
  # extraConfigLua
  # extraConfigLuaPost
  # extraConfigLuaPre
  # extraLuaPackages

  ### Vim Based Config ###
  # extraConfigVim
  # glabalOpts
  # globals
  # localOpts
  # opts

  ### Python Based Config ###
  # extraPython3Packages
  # withPython3

  ### NodeJS Based Config ###
  # withNodeJs

  ### Perl Based Config ###
  # withPerl

  ### Ruby Based Config ###
  # withRuby

}
