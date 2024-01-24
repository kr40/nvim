return {
  -- TreeSitterJoin plugin (uses SPC cj)
  {
    "Wansmer/treesj",
    cmd = "TSJToggle",
    keys = {
      {
        "<leader>cj",
        "<cmd>TSJToggle<CR>",
        mode = "n",
        noremap = true,
        silent = true,
        desc = "Toggle Split/Join Code Block",
      },
    },
    dependencies = { "nvim-treesitter/nvim-treesitter" },
    opts = {
      use_default_keymaps = false,
    },
  },
}
