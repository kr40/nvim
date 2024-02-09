return {
  -- Setup language servers, Changed event to VeryLazy
  {
    "neovim/nvim-lspconfig",
    event = function()
      return "VeryLazy"
    end,
    init = function()
      local keys = require("lazyvim.plugins.lsp.keymaps").get()
      -- disabled <C-k> keymap
      keys[#keys + 1] = { "<c-k>", mode = "i", false }
    end,
    opts = {
      servers = {
        pyright = {},
        bashls = {},
        html = {},
        cssls = {},
        astro = {},
        svelte = {
          cmd = { "svelteserver", "--stdio" },
          filetypes = { "svelte" },
        },
        stylelint_lsp = {
          cmd = { "stylelint-lsp", "--stdio" },
          filetypes = { "css", "scss" },
          settings = {
            stylelintplus = {
              autoFixOnFormat = true,
              autoFixOnSave = true,
            },
          },
        },
        emmet_language_server = {
          filetypes = {
            "astro",
            "css",
            "eruby",
            "html",
            "javascriptreact",
            "less",
            "pug",
            "sass",
            "scss",
            "typescriptreact",
          },
        },
        lua_ls = {
          -- mason = false, -- set to false if you don't want this server to be installed with mason
          -- Use this to add any additional keymaps
          -- for specific lsp servers
          ---@type LazyKeysSpec[]
          -- keys = {},
          settings = {
            Lua = {
              workspace = {
                checkThirdParty = false,
              },
              completion = {
                callSnippet = "Replace",
              },
              diagnostics = {
                globals = {
                  "vim",
                },
              },
            },
          },
        },
      },
    },
  },
}
