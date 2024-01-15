return {
  -- Add user snippets folder to nvim-cmp sources
  {
    "hrsh7th/nvim-cmp",
    opts = function()
      require("luasnip.loaders.from_vscode").lazy_load({ paths = "~/.config/nvim/snippets" })
    end,
  },
}
