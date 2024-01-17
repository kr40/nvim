return {
  -- Disabled plugins
  { "echasnovski/mini.comment", enabled = false }, -- Using Comment.nvim instead
  { "echasnovski/mini.surround", enabled = false }, -- Using nvim-surround instead
  { "echasnovski/mini.pairs", enabled = false }, -- Using nvim-autopairs instead
  { "echasnovski/mini.bufremove", enabled = false }, -- Using bufdelete instead
  { "hrsh7th/cmp-nvim-lua", enabled = false }, -- Only when using the nvim lua api
  { "hrsh7th/cmp-emoji", enabled = false }, -- Not really a need right now
  { "uga-rosa/cmp-dictionary", enabled = false }, -- Will use if really needed (Uncomment the cmp-dictionary file)
}
