return {
  -- Changed the default keybinding to <C-;>, disabled other keybindings
  {
    "folke/flash.nvim",
    keys = {
      {
        "<C-;>",
        mode = { "n", "x", "o" },
        function()
          require("flash").jump()
        end,
        desc = "Flash",
      },
      { "s", mode = { "n", "x", "o" }, false },
      { "S", mode = { "n", "x", "o" }, false },
      { "r", mode = "o", false },
      { "R", mode = { "x", "o" }, false },
      { "<c-s>", mode = { "c" }, false },
    },
    opts = {
      modes = {
        char = {
          keys = { "f", "F", "t", "T", ",", ";" },
        },
      },
    },
  },
}
