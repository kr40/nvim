return {
  -- luacheck: ignore
  -- Adds text objects for various things (check - https://github.com/chrisgrieser/nvim-various-textobjs?tab=readme-ov-file)
  {
    "chrisgrieser/nvim-various-textobjs",
    event = "LazyFile",
    opts = { useDefaultKeymaps = true, disabledKeymaps = { "gc" } },
  },
}
