return {
  -- Preview LSP Code Actions in a floating window (Uses SPC za)
  {
    "aznhe21/actions-preview.nvim",
    event = "LazyFile",
    config = function()
      vim.keymap.set(
        { "v", "n" },
        "<leader>za",
        require("actions-preview").code_actions,
        { desc = "Preview Code Actions" }
      )
    end,
  },
}
