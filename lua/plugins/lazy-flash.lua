return {
  -- luacheck: ignore
  -- Changed the default keybinding for s and S modes to <C-;> and <C-,>
  {
    "folke/flash.nvim",
    keys = {
      {
        "<C-;>",
        mode = { "n", "x", "o" },
        function()
          require("flash").jump()
        end,
        desc = "Flash",
      },
      {
        "<C-,>",
        mode = { "n", "x", "o" },
        function()
          require("flash").treesitter()
        end,
        desc = "Flash Treesitter",
      },
      -- Disabled keybindings
      { "s", mode = { "n", "x", "o" }, false },
      { "S", mode = { "n", "x", "o" }, false },
      -- { "r", mode = "o", false },
      -- { "R", mode = { "x", "o" }, false },
      { "<c-s>", mode = { "c" }, false },
    },
    opts = {},
  },
}
