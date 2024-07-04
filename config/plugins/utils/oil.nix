_: {
  plugins.oil.enable = true;

  keymaps = [
    {
      mode = "n";
      key = "-";
      action = ''<CMD>Oil<CR>'';
      options.desc = "Open parent directory";
    }
  ];
}
