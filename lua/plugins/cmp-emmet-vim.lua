return {
  -- luacheck: ignore
  -- emmet-vim completion source for nvim-cmp
  {
    "hrsh7th/nvim-cmp",
    dependencies = { "dcampos/cmp-emmet-vim" },
    ---@param opts cmp.ConfigSchema
    opts = function(_, opts)
      local cmp = require("cmp")
      opts.sources = cmp.config.sources(vim.list_extend(opts.sources, {
        {
          name = "emmet_vim",
          option = {
            filetypes = {
              "html",
              "xml",
              "typescriptreact",
              "javascriptreact",
              "css",
              "sass",
              "scss",
              "less",
              "heex",
              "tsx",
              "jsx",
              "svelte",
            },
          },
        },
      }))
    end,
  },
}
