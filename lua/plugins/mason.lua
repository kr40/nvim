return {
  -- Setup mason binary manager
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "stylua",
        "shellcheck",
        "shfmt",
        "flake8",
        "lua-language-server",
        "black",
        "pyright",
        "bash-language-server",
        "luacheck",
      },
    },
  },
}
