return {
  -- TreeSitterJoin plugin (uses SPC tm)
  {
    "Wansmer/treesj",
    event = "LazyFile",
    dependencies = { "nvim-treesitter/nvim-treesitter" },
    config = function()
      require("treesj").setup({
        use_default_keymaps = false,
      })
    end,
  },
}
