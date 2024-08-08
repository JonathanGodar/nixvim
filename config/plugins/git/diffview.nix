_: {
  plugins.diffview = {
    enable = true;
  };

  keymaps = [
    {
      mode = ["n"];
      key = "<leader>gd";
      action = "<cmd>DiffviewOpen<CR>";
      options.desc = "Open file in diffview";
    }
  ];
}
