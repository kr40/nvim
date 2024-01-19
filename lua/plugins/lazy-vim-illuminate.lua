return {
  -- Changed event to VeryLazy
  {
    "RRethy/vim-illuminate",
    event = function()
      return "VeryLazy"
    end,
    opts = {
      filetypes_denylist = {
        "dirbuf",
        "dirvish",
        "fugitive",
        "dashboard",
      },
    },
  },
}
