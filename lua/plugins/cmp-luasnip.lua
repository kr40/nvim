return {
  -- luacheck: ignore
  -- Snippet engine for Neovim, Added event for lazy loading
  -- Using neotab as default fallback for <tab> and tabout for <s-tab>
  {
    "L3MON4D3/LuaSnip",
    event = "VeryLazy",
    keys = {
      { "<tab>", mode = { "i", "s" }, false },
      { "<s-tab>", mode = { "i", "s" }, false },
      {
        "<Tab>",
        function()
          return require("luasnip").jumpable(1) and "<Plug>luasnip-jump-next" or "<Plug>(neotab-out)"--[[ "<Plug>(Tabout)" ]]
        end,
        expr = true,
        silent = true,
        mode = "i",
      },
      {
        "<Tab>",
        function()
          require("luasnip").jump(1)
        end,
        mode = "s",
      },
      {
        "<S-Tab>",
        function()
          return require("luasnip").jump(-1) or "<Plug>(TaboutBack)"
        end,
        expr = true,
        silent = true,
        mode = "i",
      },
      {
        "<S-Tab>",
        function()
          require("luasnip").jump(-1)
        end,
        mode = "s",
      },
    },
  },
}
