return {
  -- Edit your file system like a buffer (Uses -)
  {
    "stevearc/oil.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    cmd = "Oil",
    opts = {
      use_default_keymaps = false,
      view_options = {
        show_hidden = true,
      },
    },
  },
}
