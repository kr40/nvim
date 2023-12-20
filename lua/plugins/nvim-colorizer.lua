return {
  -- Colorize color properties
  {
    "NvChad/nvim-colorizer.lua",
    event = "LazyFile",
    config = function()
      require("colorizer").setup({
        filetypes = {
          "typescript",
          "typescriptreact",
          "javascript",
          "javascriptreact",
          "css",
          "html",
          "svele",
          "lua",
        },
        user_default_options = {
          css = true,
          tailwind = "both",
        },
        buftypes = {},
      })
    end,
  },
}
