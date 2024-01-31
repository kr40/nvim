return {
  -- Plugin to live-preview commands like Norm
  {
    "smjonas/live-command.nvim",
    cmd = "Norm",
    opts = {
      commands = {
        Norm = { cmd = "norm" },
      },
    },
  },
}
