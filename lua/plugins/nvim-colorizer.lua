return {
  -- Colorize color properties
  {
    "NvChad/nvim-colorizer.lua",
    ft = {
      "css",
      "javascript",
      "javascriptreact",
      "typescript",
      "typescriptreact",
      "svelte",
      "html",
      "vue",
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
