return {
  -- Replaces UI for messages, cmdline and popupmenu
  {
    "folke/noice.nvim",
    opts = {
      views = {
        mini = {
          size = { height = "auto", width = "auto", max_height = 5 }, -- Set max height to 5 lines
        },
      },
    },
  },
}
