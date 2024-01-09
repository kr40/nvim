return {
  -- luacheck: ignore
  -- Setup Mason
  {
    "williamboman/mason.nvim",
    opts = function(_, opts)
      vim.list_extend(opts.ensure_installed, {
        "stylua",
        "shellcheck",
        "shfmt",
        "flake8",
        "lua-language-server",
        "black",
        "pyright",
        "bash-language-server",
        "luacheck",
      })
    end,
  },
}
