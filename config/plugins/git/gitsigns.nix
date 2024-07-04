_: {
  plugins.gitsigns = {
    enable = true;
    settings = {
      signs = {
        add = {
          text = " ";
        };
        change = {
          text = " ";
        };
        delete = {
          text = " ";
        };
        untracked = {
          text = "";
        };
        topdelete = {
          text = "󱂥 ";
        };
        changedelete = {
          text = "󱂧 ";
        };
      };
    };
  };

  keymaps = [
    {
      mode = ["n"];
      key = "gh";
      action.__raw = ''function() require('gitsigns').nav_hunk('next') end'';
      options.desc = "Go to next git change";
    }
    {
      mode = ["n"];
      key = "gH";
      action.__raw = ''function() require('gitsigns').nav_hunk('prev') end'';
      options.desc = "Go to previous git change";
    }
  ];
}
