return {
  -- luacheck: ignore
  -- Added LSP, Linting and Formatting clients and shiftwidth to lualine (LunarVim style)
  {
    "nvim-lualine/lualine.nvim",
    opts = function(_, opts)
      opts.options = {
        disabled_filetypes = { statusline = { "dashboard", "alpha", "starter", "netrw" } },
        theme = "tokyonight",
      }
      local function get_active_lsp_clients()
        local clients = vim.lsp.get_active_clients({ bufnr = 0 })
        local client_names = {}
        for _, client in pairs(clients) do
          if client.name ~= "copilot" then
            client_names[client.name] = true
          end
        end
        return client_names
      end

      local function add_linters(client_names)
        local lint_s, lint = pcall(require, "lint")
        if not lint_s then
          return
        end

        local buf_ft = vim.bo.filetype
        for ft, linters in pairs(lint.linters_by_ft) do
          if buf_ft == ft then
            for _, linter in ipairs(linters) do
              client_names[linter] = true
            end
          end
        end
      end

      local function add_formatters(client_names)
        local ok, conform = pcall(require, "conform")
        if not ok then
          return
        end

        for _, formatter in ipairs(conform.formatters_by_ft[vim.bo.filetype] or {}) do
          client_names[formatter] = true
        end
      end

      local function add_eslint(client_names)
        if vim.fn.executable("eslint") == 1 then
          local eslint_filetypes = { "javascript", "typescript", "javascriptreact", "typescriptreact" }
          if vim.fn.index(eslint_filetypes, vim.bo.filetype) ~= -1 then
            client_names["eslint"] = true
          end
        end
      end

      table.insert(opts.sections.lualine_x, 3, function()
        local client_names = get_active_lsp_clients()
        add_linters(client_names)
        add_formatters(client_names)
        add_eslint(client_names)

        return table.concat(vim.tbl_keys(client_names), ", ")
      end)

      table.insert(opts.sections.lualine_x, 4, function()
        return "⇥ " .. vim.bo.shiftwidth
      end)
    end,
  },
}
