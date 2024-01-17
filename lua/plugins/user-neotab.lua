return {
  -- Tabout of Pairs of brackets, quotes, etc. (Using it for <Tab>)
  {
    "kawre/neotab.nvim",
    event = "VeryLazy",
    opts = {
      tabkey = "",
      act_as_tab = true,
      behavior = "nested",
      pairs = {
        { open = "(", close = ")" },
        { open = "[", close = "]" },
        { open = "{", close = "}" },
        { open = "'", close = "'" },
        { open = '"', close = '"' },
        { open = "`", close = "`" },
        { open = "<", close = ">" },
      },
      exclude = {},
      smart_punctuators = {
        enabled = true,
        semicolon = {
          enabled = true,
          ft = { "cs", "c", "cpp", "java" },
        },
        escape = {
          enabled = true,
          triggers = {},
        },
      },
    },
  },
}
