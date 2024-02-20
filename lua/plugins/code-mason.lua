return {
  -- luacheck: ignore
  -- Setup Mason
  {
    "williamboman/mason.nvim",
    opts = function(_, opts)
      vim.list_extend(opts.ensure_installed, {
        "lua-language-server",
        "black",
        "pyright",
        "bash-language-server",
        "luacheck",
        "html-lsp",
        "css-lsp",
        "astro-language-server",
        "emmet-language-server",
        "stylelint-lsp",
        "svelte-language-server",
        "golangci-lint",
        "htmx-lsp",
        "templ",
      })
    end,
  },
}
