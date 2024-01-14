return {
  -- Changed symbol to be the same as indent-blankline
  {
    "echasnovski/mini.indentscope",
    event = function()
      return "VeryLazy"
    end,
    opts = {
      symbol = "▏",
      options = { try_as_border = true },
    },
  },
}
