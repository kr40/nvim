return {
  -- Symbols Outline plugin for Neovim (Uses SPC zo)
  {
    "hedyhli/outline.nvim",
    cmd = "Outline",
    keys = {
      {
        "<leader>zo",
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
