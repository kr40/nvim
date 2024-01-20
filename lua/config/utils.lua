-- luacheck: ignore
local M = {}

-- Close all open buffers before opening dashboard
M.openDashboard = function()
  local bufdelete = require("bufdelete").bufdelete
  local buffers_to_close = {}
  local cancel_operation = false
  local cancel_bufnr = nil

  for _, bufnr in ipairs(vim.api.nvim_list_bufs()) do
    if vim.api.nvim_buf_get_option(bufnr, "buftype") ~= "terminal" and vim.api.nvim_buf_is_loaded(bufnr) then
      if vim.api.nvim_buf_get_option(bufnr, "modified") then
        local bufname = vim.api.nvim_buf_get_name(bufnr)
        local choice = vim.fn.confirm("Save changes to " .. bufname .. "?", "&Yes\n&No\n&Cancel")
        if choice == 1 then
          vim.api.nvim_buf_call(bufnr, function()
            vim.cmd("write")
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

  if cancel_operation and cancel_bufnr then
    -- Go to the buffer where cancel was pressed
    vim.api.nvim_set_current_buf(cancel_bufnr)
  else
    for _, bufnr in ipairs(buffers_to_close) do
      bufdelete(bufnr, true)
    end
    vim.cmd.Dashboard()
  end
end

return M
