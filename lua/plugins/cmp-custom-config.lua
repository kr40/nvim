return {
  -- luacheck: ignore
  -- Custom config for nvim-cmp
  {
    "hrsh7th/nvim-cmp",
    event = function()
      return "VeryLazy"
    end,
    dependencies = {
      "onsails/lspkind.nvim",
    },
    opts = function(_, opts)
      local cmp = require("cmp")

      opts.completion = {
        completeopt = "menu,menuone,noinsert,noselect", -- Added no select to prevent auto select
      }

      opts.mapping = cmp.mapping.preset.insert({
        ["<C-j>"] = cmp.mapping.select_next_item({ behavior = cmp.SelectBehavior.Select }), -- j to go down the list
        ["<C-k>"] = cmp.mapping.select_prev_item({ behavior = cmp.SelectBehavior.Select }), -- k to go up the list
        ["<C-p>"] = cmp.mapping.scroll_docs(-4), -- p to scroll the documentation up
        ["<C-n>"] = cmp.mapping.scroll_docs(4), -- n to scroll the documentation down
        ["<C-Space>"] = cmp.mapping.complete(),
        ["<C-e>"] = cmp.mapping.abort(),
        ["<C-CR>"] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
        ["<S-CR>"] = cmp.mapping.confirm({
          behavior = cmp.ConfirmBehavior.Replace,
          select = true,
        }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
        ["<CR>"] = function(fallback) -- Changed C-CR to CR
          cmp.abort()
          fallback()
        end,
      })

      -- Add () automatically for function and method calls
      local cmp_autopairs = require("nvim-autopairs.completion.cmp")
      local handlers = require("nvim-autopairs.completion.handlers")

      cmp.event:on(
        "confirm_done",
        cmp_autopairs.on_confirm_done({
          filetypes = {
            -- "*" is a alias to all filetypes
            ["*"] = {
              ["("] = {
                kind = {
                  cmp.lsp.CompletionItemKind.Function,
                  cmp.lsp.CompletionItemKind.Method,
                },
                handler = handlers["*"],
              },
            },
            lua = {
              ["("] = {
                kind = {
                  cmp.lsp.CompletionItemKind.Function,
                  cmp.lsp.CompletionItemKind.Method,
                },
                ---@param char string
                ---@param item table item completion
                ---@param bufnr number buffer number
                ---@param rules table
                ---@param commit_character table<string>
                handler = function(char, item, bufnr, rules, commit_character)
                  -- Your handler function. Inpect with print(vim.inspect{char, item, bufnr, rules, commit_character})
                end,
              },
            },
            -- Disable for tex
            tex = false,
            -- Disable for python
            python = false,
          },
        })
      )
      cmp.event:on("confirm_done", cmp_autopairs.on_confirm_done())

      -- UI Customization
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
