return {
  -- Colorizer and color picker for Neovim (Uses zC and zR)
  {
    "uga-rosa/ccc.nvim",
    event = "VeryLazy",
    cmd = { "CccPick", "CccConvert" },
    keys = {
      { "<leader>zC", "<cmd>CccPick<cr>", mode = "n", desc = "Color Picker" },
      { "<leader>zR", "<cmd>CccConvert<cr>", mode = "n", desc = "Color Converter" },
    },
    opts = {
      highlighter = {
        auto_enable = true,
        lsp = true,
      },
    },
  },
}
