return {
  -- Colorizer and color picker for Neovim
  {
    "uga-rosa/ccc.nvim",
    event = "VeryLazy",
    cmd = { "CccPick", "CccConvert" },
    keys = {
      { "<leader>cC", "<cmd>CccPick<cr>", mode = "n", desc = "Color Picker" },
      { "<leader>cR", "<cmd>CccConvert<cr>", mode = "n", desc = "Color Converter" },
    },
    opts = {
      highlighter = {
        auto_enable = true,
        lsp = true,
      },
    },
  },
}
