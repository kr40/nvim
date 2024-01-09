return {
  -- TreeSitterJoin plugin (uses SPC zm)
  {
    "Wansmer/treesj",
    cmd = "TSJToggle",
    dependencies = { "nvim-treesitter/nvim-treesitter" },
    opts = {
      use_default_keymaps = false,
    },
  },
}
