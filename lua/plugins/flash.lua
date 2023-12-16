return {
  -- Flash to jump to the next occurrence of the word under the cursor
  {
    "folke/flash.nvim",
  -- stylua: ignore
  keys = {
    { ";", mode = { "n", "x", "o" }, function() require("flash").jump() end, desc = "Flash" },
    { "S", false },
    { "r", false },
    { "R", false },
    { "<c-s>", false },
    },
  },
}
