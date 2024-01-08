return {
  -- Edit your file system like a buffer (Uses -)
  {
    "stevearc/oil.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    cmd = "Oil",
    config = function()
      require("oil").setup({
        use_default_keymaps = false,
        view_options = {
          show_hidden = true,
        },
      })
    end,
  },
}
