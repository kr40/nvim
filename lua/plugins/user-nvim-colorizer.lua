return {
  -- Colorize color properties
  {
    "NvChad/nvim-colorizer.lua",
    ft = {
      "typescript",
      "typescriptreact",
      "javascript",
      "javascriptreact",
      "css",
      "html",
      "svelte",
      "lua",
      "astro",
    },
    opts = {
      filetypes = {
        "typescript",
        "typescriptreact",
        "javascript",
        "javascriptreact",
        "css",
        "html",
        "svelte",
        "lua",
        "astro",
      },
      user_default_options = {
        css = true,
        css_fn = true,
        tailwind = true,
      },
      buftypes = {},
    },
  },
}
