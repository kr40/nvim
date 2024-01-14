return {
  -- luacheck: ignore
  -- Add dictionary support to nvim-cmp
  --[[ {
    "hrsh7th/nvim-cmp",
    dependencies = { "uga-rosa/cmp-dictionary" },
    ---@param opts cmp.ConfigSchema
    opts = function(_, opts)
      local cmp = require("cmp")
      local dict = require("cmp_dictionary")

      dict.setup({
        exact = -1,
        first_case_insensitive = true,
        document = false,
        document_command = "wn %s -over",
        sqlite = false,
        max_items = -1,
        capacity = 5,
        debug = false,
      })
      dict.switcher({
        spelllang = {
          en = "~/.config/nvim/spell/en.dict",
        },
      })

      opts.sources = cmp.config.sources(vim.list_extend(opts.sources, { { name = "dictionary", keyword_length = 6 } }))
    end,
  }, ]]
}
