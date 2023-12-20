return {
  -- Rename with preview
  {
    "smjonas/inc-rename.nvim",
    event = "LazyFile",
    config = function()
      require("inc_rename").setup()
    end,
  },
}
