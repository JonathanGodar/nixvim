{
  pkgs,
  lib,
  ...
}: {
  extraPlugins = with pkgs.vimPlugins; [harpoon2];
  extraConfigLua = ''
    harpoon = require('harpoon')
    harpoon:setup()
  '';
  keymaps =
    [
      {
        mode = "n";
        key = "<leader>ha";
        action.__raw = ''function() harpoon:list():add() end'';
        options.desc = ''Add current position to harpoon list'';
      }
      {
        mode = "n";
        key = "<C-e>";
        action.__raw = ''function() harpoon.ui:toggle_quick_menu(harpoon:list()) end'';
        options.desc = ''Toggle harpoon quick menu'';
      }
    ]
    ++ lib.genList (idx: {
      mode = "n";
      key = "<leader>${toString (idx + 1)}";
      action.__raw = "function() harpoon:list():select(${toString (idx + 1)}) end";
      options.desc = ''Go to mark ${toString (idx + 1)} of harpoon'';
    })
    9;
}
