return {
  -- luacheck: ignore
  -- Better increment and decrement plugin (Replaces <C-a> and <C-x>)
  {
    "monaqa/dial.nvim",
    keys = {
      {
        "<C-a>",
        mode = { "n", "v" },
        function()
          return require("dial.map").inc_normal()
        end,
        expr = true,
        noremap = true,
        desc = "Increment",
      },
      {
        "<C-x>",
        mode = { "n", "v" },
        function()
          return require("dial.map").dec_normal()
        end,
        expr = true,
        noremap = true,
        desc = "Decrement",
      },
    },
    config = function()
      local augend = require("dial.augend")
      -- Function to create date configs
      local function createDateConfig(pattern)
        return augend.date.new({
          pattern = pattern,
          default_kind = "day",
          only_valid = true,
          word = false,
        })
      end

      require("dial.config").augends:register_group({
        default = {
          augend.integer.alias.decimal,
          augend.integer.alias.decimal_int,
          augend.integer.alias.hex,
          augend.integer.alias.binary,
          augend.constant.alias.bool,
          augend.constant.alias.alpha,
          augend.constant.alias.Alpha,
          augend.semver.alias.semver,
          augend.hexcolor.new({ case = "lower" }),
          augend.hexcolor.new({ case = "upper" }),
          augend.constant.new({ elements = { "let", "const" } }),
          augend.constant.new({ elements = { "and", "or" } }),
          augend.constant.new({ elements = { "||", "&&" }, word = false }),
          createDateConfig("%d/%m/%Y"),
          createDateConfig("%a, %d/%m/%Y"),
          createDateConfig("%A, %d/%m/%Y"),
          createDateConfig("%d/%m/%y"),
          createDateConfig("%a, %d/%m/%y"),
          createDateConfig("%A, %d/%m/%y"),
          createDateConfig("%d-%m-%Y"),
          createDateConfig("%a, %d-%m-%Y"),
          createDateConfig("%A, %d-%m-%Y"),
          createDateConfig("%d-%m-%y"),
          createDateConfig("%a, %d-%m-%y"),
          createDateConfig("%A, %d-%m-%y"),
          createDateConfig("%d/%m"),
          createDateConfig("%H:%M:%S"),
          createDateConfig("%H:%M"),
          createDateConfig("%-I:%M:%p"),
          createDateConfig("%-I:%M:%S:%p"),
          createDateConfig("%b"),
          createDateConfig("%B"),
          createDateConfig("%a, %d-%b-%y"),
          createDateConfig("%A, %d-%b-%y"),
          createDateConfig("%a, %d-%B-%Y"),
          createDateConfig("%A, %d-%B-%Y"),
        },
      })
    end,
  },
}
