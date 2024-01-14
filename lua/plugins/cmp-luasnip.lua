return {
  -- Snippet engine for Neovim
  {
    "L3MON4D3/LuaSnip",
    event = "VeryLazy",
    keys = function() -- Removing keys and setting up Supertab
      return {}
    end,
  },
}
