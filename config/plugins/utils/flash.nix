_: {
  plugins = {
    flash = {
      enable = true;
    };
  };
  keymaps = [
    {
      mode = ["n"];
      key = "s";
      action.__raw = "function() require(\"flash\").jump() end";
    }
    {
      mode = ["n" "o"];
      key = "S";
      action.__raw = "function() require(\"flash\").treesitter() end";
    }
    {
      mode = ["o"];
      key = "r";
      action.__raw = "function() require(\"flash\").remote() end";
    }
  ];
}
