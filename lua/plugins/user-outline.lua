return {
  -- Symbols Outline plugin for Neovim (Uses SPC cs)
  {
    "hedyhli/outline.nvim",
    cmd = "Outline",
    keys = {
      {
        "<leader>cS",
        "<cmd>Outline<CR>",
        mode = "n",
        noremap = true,
        silent = true,
        desc = "Toggle Symbols Outline",
      },
    },
    opts = {},
  },
}
