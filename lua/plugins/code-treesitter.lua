return {
  -- luacheck: ignore
  -- Setup treesitter
  {
    "nvim-treesitter/nvim-treesitter",
    opts = function(_, opts)
      vim.list_extend(opts.ensure_installed, {
        "astro",
      })
    end,
  },
}
