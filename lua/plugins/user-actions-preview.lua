return {
  -- Preview LSP Code Actions in a floating window (Uses SPC za)
  {
    "aznhe21/actions-preview.nvim",
    keys = {
      {
        "<leader>za",
        function()
          require("actions-preview").code_actions()
        end,
        mode = { "n", "v" },
        desc = "Preview Code Actions",
      },
    },
  },
}
