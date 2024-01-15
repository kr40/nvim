return {
  -- Better increment and decrement plugin (Replaces <C-a> and <C-x>)
  {
    "monaqa/dial.nvim",
    -- stylua: ignore
    keys = {
      { "<C-a>", function() return require("dial.map").inc_normal() end, expr = true, desc = "Increment" },
      { "<C-x>", function() return require("dial.map").dec_normal() end, expr = true, desc = "Decrement" },
    },
    config = function()
      local augend = require("dial.augend")
      require("dial.config").augends:register_group({
        default = {
          augend.integer.alias.decimal,
          augend.integer.alias.hex,
          augend.hexcolor.new({
            case = "lower",
          }),
          augend.date.alias["%d/%m/%Y"],
          augend.date.alias["%d-%m-%Y"],
          augend.date.alias["%d/%m"],
          augend.constant.alias.bool,
          augend.semver.alias.semver,
          augend.constant.new({ elements = { "let", "const" } }),
          augend.constant.new({ elements = { "and", "or" } }),
          augend.constant.new({ elements = { "||", "&&" }, word = false }),
        },
      })
    end,
  },
}
