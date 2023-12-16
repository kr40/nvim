return {
  -- Shows a window with all the symbols in the current file
  {
    "simrat39/symbols-outline.nvim",
    keys = { { "<leader>to", "<cmd>SymbolsOutline<cr>", desc = "Toggle Symbols Outline" } },
    cmd = "SymbolsOutline",
    opts = {
      position = "right",
    },
  },
}
