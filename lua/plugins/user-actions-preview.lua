return {
  -- Preview LSP Code Actions in a floating window (Uses SPC cp)
  {
    "aznhe21/actions-preview.nvim",
    keys = {
      {
        "<leader>cp",
        function()
          require("actions-preview").code_actions()
        end,
        mode = { "n", "v" },
        desc = "Preview Code Actions",
      },
    },
  },
}
