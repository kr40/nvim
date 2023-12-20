return {
  -- Flash to jump to the next occurrence of the word under the cursor
  {
    "folke/flash.nvim",
  -- stylua: ignore
  keys = {
    { ";", mode = { "n", "x", "o" }, function() require("flash").jump() end, desc = "Flash" },
    { "s",mode = {"n", "x", "o"},false },
    { "S",mode = {"n", "x", "o"}, false },
    { "r",mode = "o", false },
    { "R",mode = {"x", "o"}, false },
    { "<c-s>",mode = {"c"}, false },
    },
  },
}
