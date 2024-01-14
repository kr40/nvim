return {
  -- Flash to jump to the next occurrence of the word under the cursor
  {
    "folke/flash.nvim",
    keys = {
      {
        ";",
        mode = { "n", "x", "o" },
        function()
          require("flash").jump()
        end,
        desc = "Flash",
      },
      { ",", mode = { "n", "x", "o" }, false },
      { "s", mode = { "n", "x", "o" }, false },
      { "S", mode = { "n", "x", "o" }, false },
      { "r", mode = "o", false },
      { "R", mode = { "x", "o" }, false },
      { "<c-s>", mode = { "c" }, false },
    },
    opts = {
      modes = {
        char = {
          keys = { "f", "F", "t", "T" },
        },
      },
    },
  },
}
