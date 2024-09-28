{pkgs, ...}: {
  plugins.treesitter = {
    enable = true;
    # settings.indent = true;
    folding = false;
    nixvimInjections = true;
    grammarPackages = pkgs.vimPlugins.nvim-treesitter.allGrammars;
  };

  plugins.treesitter-textobjects = {
    enable = false;
    select = {
      enable = true;
      lookahead = true;
      keymaps = {
        "ap" = "@parameter.outer";
        "ip" = "@parameter.inner";
        "af" = "@function.outer";
        "if" = "@function.inner";
        "ic" = "@conditional.inner";
        "ac" = "@conditional.outer";
        "il" = "@loop.inner";
        "al" = "@loop.outer";
        "a#" = "@comment.outer";
        "i#" = "@comment.inner";
      };
    };
    move = {
      enable = true;
      gotoNextStart = {
        "]m" = "@function.outer";
        "]]" = "@class.outer";
      };
      gotoNextEnd = {
        "]M" = "@function.outer";
        "][" = "@class.outer";
      };
      gotoPreviousStart = {
        "[m" = "@function.outer";
        "[[" = "@class.outer";
      };
      gotoPreviousEnd = {
        "[M" = "@function.outer";
        "[]" = "@class.outer";
      };
    };
    swap = {
      enable = true;
      swapNext = {
        "<leader>a" = "@parameters.inner";
      };
      swapPrevious = {
        "<leader>A" = "@parameter.outer";
      };
    };
  };
}
