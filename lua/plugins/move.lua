return {
  -- Move block of code up, down, left and right
  {
    "hinell/move.nvim",
    keys = {
      {
        "<A-h>",
        "<cmd>MoveWord -1<CR>",
        mode = "n",
        desc = "Move Word Left",
      },
      {
        "<A-l>",
        "<cmd>MoveWord 1<CR>",
        mode = "n",
        desc = "Move Word Right",
      },
      {
        "<A-h>",
        "<cmd>MoveHBlock -1<CR>",
        mode = "v",
        desc = "Move Block Left",
      },
      {
        "<A-l>",
        "<cmd>MoveHBlock 1<CR>",
        mode = "v",
        desc = "Move Block Right",
      },
    },
  },
}
