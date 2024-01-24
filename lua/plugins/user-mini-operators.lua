return {
  -- Evaluate, Exchange, Multiply, Replace and Sort operators for Neovim
  {
    "echasnovski/mini.operators",
    version = false,
    event = "VeryLazy",
    opts = {
      -- Evaluate text and replace with output
      evaluate = {
        prefix = "s=",

        -- Function which does the evaluation
        func = nil,
      },

      -- Exchange text regions
      exchange = {
        prefix = "sx",

        -- Whether to reindent new text to match previous indent
        reindent_linewise = true,
      },

      -- Multiply (duplicate) text
      multiply = {
        prefix = "sm",

        -- Function which can modify text before multiplying
        func = nil,
      },

      -- Replace text with register
      replace = {
        prefix = "sr",

        -- Whether to reindent new text to match previous indent
        reindent_linewise = true,
      },

      -- Sort text
      sort = {
        prefix = "ss",

        -- Function which does the sort
        func = nil,
      },
    },
  },
}
