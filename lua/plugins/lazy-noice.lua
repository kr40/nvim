return {
  -- Changed max height to 5 lines
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
