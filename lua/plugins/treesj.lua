return {
  -- TreeSitterJoin plugin (uses SPC zm)
  {
    "Wansmer/treesj",
    cmd = { "TSJToggle" },
    dependencies = { "nvim-treesitter/nvim-treesitter" },
    config = function()
      require("treesj").setup({
        use_default_keymaps = false,
      })
    end,
  },
}
