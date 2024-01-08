return {
  -- Symbols Outline plugin for Neovim (Uses SPC zo)
  {
    "hedyhli/outline.nvim",
    cmd = "Outline",
    config = function()
      require("outline").setup({})
    end,
  },
}
