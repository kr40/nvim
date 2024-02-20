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
        htmx = {},
        templ = {
          default_config = {
            cmd = { "templ", "lsp" },
            filetypes = { "templ" },
            root_dir = require("lspconfig.util").root_pattern("go.mod", ".git"),
            settings = {},
          },
        },
        svelte = {
          cmd = { "svelteserver", "--stdio" },
          filetypes = { "svelte" },
        },
        stylelint_lsp = {
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
            "templ",
          },
        },
        lua_ls = {
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
