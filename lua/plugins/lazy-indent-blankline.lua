return {
  -- Setup scope for indent-blankline (excluded python), changed event to VeryLazy
  {
    "lukas-reineke/indent-blankline.nvim",
    event = function()
      return "VeryLazy"
    end,
    opts = {
      indent = {
        char = "▏",
        tab_char = "▏",
      },
      scope = {
        enabled = true,
        highlight = "MiniIndentscopeSymbol",
        char = "▏",
        exclude = {
          language = {
            { "python" },
          },
        },
      },
      exclude = {
        filetypes = {
          "help",
          "alpha",
          "dashboard",
          "neo-tree",
          "Trouble",
          "trouble",
          "lazy",
          "mason",
          "notify",
          "toggleterm",
          "lazyterm",
        },
      },
    },
  },
}
