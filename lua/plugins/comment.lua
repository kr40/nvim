return {
  -- Comment plugin (gcc for line comment, gb for block comment after selection)
  {
    "numToStr/Comment.nvim",
    event = "LazyFile",
    opts = {
      -- Integration with ts_context_commentstring plugin
      pre_hook = require("ts_context_commentstring.integrations.comment_nvim").create_pre_hook(),
    },
  },
}
