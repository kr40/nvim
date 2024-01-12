local M = {}

-- Function to shorten keymap options
M.opts = function(additional_options)
  return vim.tbl_extend("force", { noremap = true, silent = true }, additional_options)
end

M.imap = function(tbl)
  vim.keymap.set("i", tbl[1], tbl[2], tbl[3])
end

M.nmap = function(tbl)
  vim.keymap.set("n", tbl[1], tbl[2], tbl[3])
end

M.xmap = function(tbl)
  vim.keymap.set("x", tbl[1], tbl[2], tbl[3])
end

M.nxmap = function(tbl)
  vim.keymap.set({ "n", "x" }, tbl[1], tbl[2], tbl[3])
end

M.inmap = function(tbl)
  vim.keymap.set({ "i", "n" }, tbl[1], tbl[2], tbl[3])
end

return M
