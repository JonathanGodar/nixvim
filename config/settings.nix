{
  config = {
    extraConfigLuaPre =
      # lua
      ''
        vim.fn.sign_define("diagnosticsignerror", { text = " ", texthl = "diagnosticerror", linehl = "", numhl = "" })
        vim.fn.sign_define("diagnosticsignwarn", { text = " ", texthl = "diagnosticwarn", linehl = "", numhl = "" })
        vim.fn.sign_define("diagnosticsignhint", { text = "󰌵", texthl = "diagnostichint", linehl = "", numhl = "" })
        vim.fn.sign_define("diagnosticsigninfo", { text = " ", texthl = "diagnosticinfo", linehl = "", numhl = "" })

  local function prefix_diagnostic(prefix, diagnostic)
    return string.format(prefix .. ' %s', diagnostic.message)
  end
        vim.diagnostic.config {
    virtual_text = {
      prefix = "",
      format = function(diagnostic)
        local severity = diagnostic.severity
        if severity == vim.diagnostic.severity.ERROR then
          return prefix_diagnostic('󰅚', diagnostic)
        end
        if severity == vim.diagnostic.severity.WARN then
          return prefix_diagnostic('⚠', diagnostic)
        end
        if severity == vim.diagnostic.severity.INFO then
          return prefix_diagnostic('ⓘ', diagnostic)
        end
        if severity == vim.diagnostic.severity.HINT then
          return prefix_diagnostic('󰌶', diagnostic)
        end
        return prefix_diagnostic('■', diagnostic)
      end,
    },
    signs = {
      text = {
        -- Requires Nerd fonts
        [vim.diagnostic.severity.ERROR] = '󰅚',
        [vim.diagnostic.severity.WARN] = '⚠',
        [vim.diagnostic.severity.INFO] = 'ⓘ',
        [vim.diagnostic.severity.HINT] = '󰌶',
      },
    },
    }

      '';

    clipboard = {
      providers.wl-copy.enable = true;
    };

    opts = {
      number = true;
      relativenumber = true;
      # tabstop = 2;
      # softtabstop = 2;
      showtabline = 2;
      # expandtab = true;
      # smartindent = true;
      shiftwidth = 2;
      # breakindent = true;
      cursorline = true;
      scrolloff = 8;
      foldmethod = "manual";
      foldenable = false;
      # linebreak = true;
      spell = false;
      swapfile = false;
      timeoutlen = 300;
      termguicolors = true;
      showmode = false;
      splitbelow = true;
      splitkeep = "screen";
      splitright = true;
    };
  };
}
