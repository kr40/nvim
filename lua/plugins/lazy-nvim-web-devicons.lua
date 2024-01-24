return {
  -- Added icon for astro
  {
    "nvim-tree/nvim-web-devicons",
    opts = {
      override_by_extension = {
        astro = {
          icon = "",
          color = "#EF8547",
          name = "astro",
        },
      },
    },
  },
}
