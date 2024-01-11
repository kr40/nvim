return {
  -- luacheck: ignore
  -- Adding lspkind icons to completion items and changing the look of the completion popup
  {
    "hrsh7th/nvim-cmp",
    dependencies = {
      "onsails/lspkind.nvim",
    },
    opts = function(_, opts)
      local cmp = require("cmp")
      cmp.setup({
        window = {
          documentation = cmp.config.window.bordered(),
        },
      })
      opts.window = {
        completion = {
          winhighlight = "Normal:Pmenu,FloatBorder:Pmenu,CursorLine:PmenuSel,Search:None",
          col_offset = -3,
          side_padding = 0,
        },
        documentation = {
          winhighlight = "Normal:Pmenu,CursorLine:PmenuSel,Search:None",
        },
      }

      opts.formatting = {
        fields = { "kind", "abbr", "menu" },
        format = function(entry, item)
          local kind = require("lspkind").cmp_format({
            mode = "symbol_text",
            maxwidth = 50,
            symbol_map = { Copilot = "" },
          })(entry, item)

          local strings = vim.split(kind.kind, "%s", { trimempty = true })
          kind.kind = " " .. (strings[1] or "") .. " "
          kind.menu = "    (" .. (strings[2] or "") .. ")"

          return kind
        end,
      }
    end,
  },
}
