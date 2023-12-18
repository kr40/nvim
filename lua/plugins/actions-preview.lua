return {
  -- Preview LSP Code Actions in a floating window (Uses SPC cp)
  {
    "aznhe21/actions-preview.nvim",
    event = "LazyFile",
    config = function()
      vim.keymap.set(
        { "v", "n" },
        "<leader>cp",
        require("actions-preview").code_actions,
        { desc = "Preview Code Actions" }
      )
    end,
  },
}
