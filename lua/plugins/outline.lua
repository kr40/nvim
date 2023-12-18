return {
  -- Symbols Outline plugin for Neovim (Uses SPC to)
  {
    "hedyhli/outline.nvim",
    event = "LazyFile",
    config = function()
      vim.keymap.set("n", "<leader>to", "<cmd>Outline<CR>", { desc = "Toggle Symbols Outline" })

      require("outline").setup({})
    end,
  },
}
