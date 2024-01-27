-- luacheck: ignore
-- Helper functions for my Neovim Config

local M = {}

-- Close all open buffers, windows and tabs before opening dashboard
M.openDashboard = function()
  local bufdelete = require("bufdelete").bufdelete
  local buffers_to_close = {}
  local cancel_operation = false
  local cancel_bufnr = nil

  -- Close special filetypes
  M.specialFtClose()

  -- Close all other windows except the current one
  local current_win = vim.api.nvim_get_current_win()
  for _, win in ipairs(vim.api.nvim_list_wins()) do
    if win ~= current_win then
      vim.api.nvim_win_close(win, false)
    end
  end

  -- Close all tabs except the current one
  local current_tab = vim.api.nvim_get_current_tabpage()
  for _, tab in ipairs(vim.api.nvim_list_tabpages()) do
    if tab ~= current_tab then
      ---@diagnostic disable-next-line: undefined-field
      vim.api.nvim_tabpage_close(tab, false)
    end
  end

  -- Check for modified buffers and prompt to save
  for _, bufnr in ipairs(vim.api.nvim_list_bufs()) do
    if vim.api.nvim_buf_get_option(bufnr, "buftype") ~= "terminal" and vim.api.nvim_buf_is_loaded(bufnr) then
      if vim.api.nvim_buf_get_option(bufnr, "modified") then
        local bufname = vim.api.nvim_buf_get_name(bufnr)
        local choice = vim.fn.confirm("Save changes to " .. bufname .. "?", "&Yes\n&No\n&Cancel")
        if choice == 1 then
          vim.api.nvim_buf_call(bufnr, function()
            vim.cmd.write()
          end)
        elseif choice == 3 then
          cancel_operation = true
          cancel_bufnr = bufnr
          break
        end
      end
      table.insert(buffers_to_close, bufnr)
    end
  end

  -- Go to buffer where cancel was selected
  if cancel_operation and cancel_bufnr then
    vim.api.nvim_set_current_buf(cancel_bufnr)
  else
    for _, bufnr in ipairs(buffers_to_close) do
      bufdelete(0, true)
    end
    vim.cmd.Dashboard()
  end
end

-- Close special filetypes
M.specialFtClose = function()
  local special_filetypes = {
    "oil",
    "neo-tree",
    "PlenaryTestPopup",
    "help",
    "lspinfo",
    "man",
    "notify",
    "qf",
    "query",
    "spectre_panel",
    "startuptime",
    "tsplayground",
    "neotest-output",
    "checkhealth",
    "neotest-summary",
    "neotest-output-panel",
    "Outline",
  }

  local current_buf = vim.api.nvim_get_current_buf()
  local current_buf_type = vim.api.nvim_buf_get_option(current_buf, "filetype")

  for _, filetype in ipairs(special_filetypes) do
    if current_buf_type == filetype then
      vim.cmd.q()
      break
    end
  end
end

return M
