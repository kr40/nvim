return {
  -- Setup scope for indent-blankline
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
        show_exact_scope = true,
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
