return {
  -- Edit your file system like a buffer (Uses -)
  {
    "stevearc/oil.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    event = "LazyFile",
    config = function()
      require("oil").setup({
        vim.keymap.set("n", "-", "<CMD>Oil --float<CR>", { desc = "Open Parent Directory" }),
        use_default_keymaps = false,
        view_options = {
          show_hidden = true,
        },
      })
    end,
  },
}
