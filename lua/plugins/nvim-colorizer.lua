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
    },
    config = function()
      require("colorizer").setup({
        filetypes = {
          "typescript",
          "typescriptreact",
          "javascript",
          "javascriptreact",
          "css",
          "html",
          "svelte",
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
