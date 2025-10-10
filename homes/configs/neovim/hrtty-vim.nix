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

  plugins = {
    
    neo-tree = {
      
      enable = true;
      enableGitStatus = true;
      enableModifiedMarkers = true;
      closeIfLastWindow = true;


      defaultComponentConfigs = {

        gitStatus.symbols = {

	  added = "";
	  conflict = "";
	  deleted = "";
	  ignored = "";
	  modified = "";
	  renamed = "";
	  staged = "";
	  unstaged = "";
	  untracked = ""; 

	};

	icon = {

	  folderClosed = "";
	  folderEmpty = "";
	  folderEmptyOpen = "";
	  folderOpen = "";
	  highlight = "";

	};

      };

    };


    lspconfig.enable = true;


    blink-cmp = {

      enable = true;

      settings.appearance.kind_icons = {

      	Class = "";
        Color = "";
	Constant = "";
	Constructor = "";
	Enum = "";
	EnumMember = "";
	Event = "";
	Field = "";
	File = "";
	Folder = "";
	Function = "";
	Interface = "";
	Keyword = "";
	Method = "";
	Module = "";
	Operator = "";
	Property = "";
	Reference = "";
	Snippet = "";
	Struct = "";
	Text = "";
	TypeParameter = "";
	Unit = "";
	Value = "";
	Variable = "";

      };

      settings.appearance.nerd_font_variant = "mono";

    };

    treesitter = {
      
      enable = true;
      folding = true;
      settings.highlight.enable = true;
      settings.indent.enable = true;

    };

    telescope = {

      enable = true;

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
