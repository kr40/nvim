return {
  -- Plugin to save and load macros with ease!
  {
    "kr40/nvim-macros",
    cmd = { "MacroSave", "MacroYank", "MacroSelect", "MacroDelete" },
    keys = {
      { "<leader>ms", "<cmd>MacroSave<cr>", mode = "n", desc = "Save Macro" },
      { "<leader>my", "<cmd>MacroYank<cr>", mode = "n", desc = "Yank Macro" },
      { "<leader>mm", "<cmd>MacroSelect<cr>", mode = "n", desc = "Select Macro" },
      { "<leader>md", "<cmd>MacroDelete<cr>", mode = "n", desc = "Delete Macro" },
    },
    opts = {
      json_formatter = "jq",
    },
  },
}
