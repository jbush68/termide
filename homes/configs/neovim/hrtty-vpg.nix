{
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

    settings.appearance.nerd_font_variant = "mono";
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
}