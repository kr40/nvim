return {
  -- luacheck: ignore
  -- Added LSP, Linting and Formatting clients and shiftwidth to lualine (LunarVim style)
  {
    "nvim-lualine/lualine.nvim",
    opts = function(_, opts)
      table.insert(opts.sections.lualine_x, 3, function()
        local clients_lsp = function()
          local active_clients = vim.lsp.get_active_clients({ bufnr = 0 })
          local buf_client_names = {}

          if not active_clients or #active_clients == 0 then
            return ""
          end

          -- Collect active LSP clients
          for _, client in pairs(active_clients) do
            if client.name ~= "copilot" then
              table.insert(buf_client_names, client.name)
            end
          end

          -- Include linters
          local lint_s, lint = pcall(require, "lint")
          if lint_s then
            local buf_ft = vim.bo.filetype
            for ft_k, ft_v in pairs(lint.linters_by_ft) do
              if type(ft_v) == "table" then
                for _, linter in ipairs(ft_v) do
                  if buf_ft == ft_k then
                    table.insert(buf_client_names, linter)
                  end
                end
              elseif type(ft_v) == "string" then
                if buf_ft == ft_k then
                  table.insert(buf_client_names, ft_v)
                end
              end
            end
          end

          -- Include formatters
          local ok, conform = pcall(require, "conform")
          local formatters = table.concat(conform.formatters_by_ft[vim.bo.filetype], " ")
          if ok then
            for formatter in formatters:gmatch("%w+") do
              if formatter then
                table.insert(buf_client_names, formatter)
              end
            end
          end

          -- Ensure unique client names
          local unique_client_names = {}
          for _, client_name_target in ipairs(buf_client_names) do
            local is_duplicate = false
            for _, client_name_compare in ipairs(unique_client_names) do
              if client_name_target == client_name_compare then
                is_duplicate = true
              end
            end
            if not is_duplicate then
              table.insert(unique_client_names, client_name_target)
            end
          end

          -- Concatenate the unique client names into a comma-separated string
          return table.concat(unique_client_names, ", ")
        end

        return clients_lsp() -- Call the function to get the result
      end)

      -- Add shiftwidth
      table.insert(opts.sections.lualine_x, 4, function()
        return "⇥ " .. vim.bo.shiftwidth
      end)
    end,
  },
}
