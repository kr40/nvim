return {
  -- Changes color of the cursor's line number based on the current vim mode
  {
    "mawkler/modicator.nvim",
    dependencies = "folke/tokyonight.nvim",
    event = "VeryLazy",
    --[[ init = function()
      vim.o.cursorline = true
      vim.o.number = true
      vim.o.termguicolors = true
    end, ]]
    opts = {},
  },
}
