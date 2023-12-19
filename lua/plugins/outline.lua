return {
  -- Symbols Outline plugin for Neovim (Uses SPC zo)
  {
    "hedyhli/outline.nvim",
    event = "LazyFile",
    config = function()
      vim.keymap.set("n", "<leader>zo", "<cmd>Outline<CR>", { desc = "Toggle Symbols Outline" })

      require("outline").setup({})
    end,
  },
}
