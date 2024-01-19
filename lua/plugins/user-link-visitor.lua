return {
  -- Visit links
  {
    "xiyaowong/link-visitor.nvim",
    cmd = { "VisitLinkInBuffer", "VisitLinkUnderCursor", "VisitLinkNearCursor", "VisitLinkNearest" },
    keys = {
      { "<leader>zl", "<cmd>VisitLinkUnderCursor<cr>", mode = "n", desc = "Visit link under Cursor" },
      { "<leader>zL", "<cmd>VisitLinkInBuffer<cr>", mode = "n", desc = "Visit links in Buffer" },
    },
    opts = {
      open_cmd = nil,
      silent = true, -- disable all prints, `false` by defaults skip_confirmation
      skip_confirmation = false, -- Skip the confirmation step, default: false
      border = "rounded", -- none, single, double, rounded, solid, shadow see `:h nvim_open_win()`
    },
  },
}
