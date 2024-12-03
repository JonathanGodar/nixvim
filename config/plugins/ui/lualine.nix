_: {
  plugins.lualine = {
    enable = true;
    settings = {
      options = {
        globalstatus = true;
        extensions = [
          "neo-tree"
        ];
        disabledFiletypes = {
          statusline = ["startup" "alpha"];
        };
        theme = "catppuccin";
      };
    };
  };
}
