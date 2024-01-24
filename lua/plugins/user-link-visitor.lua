return {
  -- Visit links
  {
    "xiyaowong/link-visitor.nvim",
    cmd = { "VisitLinkInBuffer", "VisitLinkUnderCursor", "VisitLinkNearCursor", "VisitLinkNearest" },
    keys = {
      { "<leader>fl", "<cmd>VisitLinkUnderCursor<cr>", mode = "n", desc = "Link Under Cursor" },
      { "<leader>fL", "<cmd>VisitLinkInBuffer<cr>", mode = "n", desc = "Links in Buffer" },
    },
    opts = {
      open_cmd = nil,
      silent = true, -- disable all prints, `false` by defaults skip_confirmation
      skip_confirmation = false, -- Skip the confirmation step, default: false
      border = "rounded", -- none, single, double, rounded, solid, shadow see `:h nvim_open_win()`
    },
  },
}
