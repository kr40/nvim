return {
  -- luacheck: ignore
  -- Adds text objects for various things (check - https://github.com/chrisgrieser/nvim-various-textobjs?tab=readme-ov-file)
  {
    "chrisgrieser/nvim-various-textobjs",
    event = "VeryLazy",
    opts = {
      useDefaultKeymaps = true,
      disabledKeymaps = {
        "gc",
        "in",
        "an",
        "il",
        "al",
        "io",
        "ao",
        "ic",
        "ac",
        "iq",
        "aq",
        "i_",
        "a_",
        "iN",
        "aN",
        "ii",
        "ai",
        "iI",
        "aI",
      },
      lookForwardSmall = 500,
      lookForwardBig = 500,
    },
  },
}
