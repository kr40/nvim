return {
  -- luacheck: ignore
  -- Setup treesitter
  {
    "nvim-treesitter/nvim-treesitter",
    opts = function(_, opts)
      opts.highlight = {
        enable = true,
        additional_vim_regex_highlighting = false,
      }
      vim.list_extend(opts.ensure_installed, {
        "astro",
        "svelte",
        "css",
        "make",
        "templ",
      })
    end,
  },
}
