{pkgs, inputs, ...}: {
  imports = [
    # General Configuration
    ./settings.nix
    ./keymaps.nix
    ./auto_cmds.nix

    # Themes
    ./plugins/themes/default.nix

    # Completion

    ./plugins/cmp/cmp.nix
    ./plugins/cmp/cmp-copilot.nix
    ./plugins/cmp/lspkind.nix

    # Snippets
    ./plugins/snippets/luasnip.nix

    # Editor plugins and configurations
    ./plugins/editor/neo-tree.nix
    ./plugins/editor/treesitter.nix
    ./plugins/editor/undotree.nix
    ./plugins/editor/illuminate.nix
    ./plugins/editor/indent-blankline.nix
    ./plugins/editor/todo-comments.nix
    ./plugins/editor/copilot-chat.nix
    ./plugins/editor/indent-o-matic.nix

    # UI plugins
    ./plugins/ui/bufferline.nix
    ./plugins/ui/lualine.nix
    ./plugins/ui/rainbow-delimiters.nix

    # LSP and formatting
    ./plugins/lsp/lsp.nix
    ./plugins/lsp/conform.nix
    ./plugins/lsp/fidget.nix

    # Git
    ./plugins/git/lazygit.nix
    ./plugins/git/diffview.nix
    ./plugins/git/gitsigns.nix

    # Utils
    ./plugins/utils/telescope.nix
    ./plugins/utils/whichkey.nix
    ./plugins/utils/extra_plugins.nix
    # ./plugins/utils/mini.nix
    ./plugins/utils/markdown-preview.nix
    ./plugins/utils/obsidian.nix
    ./plugins/utils/flash.nix
    ./plugins/utils/tmux-navigator.nix
    ./plugins/utils/harpoon.nix
    ./plugins/utils/oil.nix
  ];

  extraPlugins = [(pkgs.vimUtils.buildVimPlugin {
      name = "typst-preview.nvim";
      src = inputs.typst-preview;
  })];

}
