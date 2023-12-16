-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
-- luacheck: ignore

-- Use J without moving the cursor
vim.keymap.set("n", "J", "mzJ`z")

-- Paste without losing the current register
vim.keymap.set("x", "p", [["_dP]])

-- Make current file executable
vim.keymap.set("n", "<leader>mx", "<cmd>!chmod a+x %<CR>", { silent = true, desc = "Make Executable (a+x)" })

-- Toggle Dashboard
vim.keymap.set("n", "<leader>d", "<cmd>Dashboard<CR>", { silent = true, desc = "Open Dashboard" })

-- Toggle Treesj
vim.keymap.set("n", "<leader>tm", "<cmd>TSJToggle<CR>", { silent = true, desc = "Toggle Split/Join Code Block" })

-- Run Code
vim.keymap.set("n", "<leader>rr", "<cmd>Jaq<CR>", { silent = true, desc = "Run Code" })

-- Toggle Undotree
vim.keymap.set("n", "<leader>tu", "<cmd>UndotreeToggle<CR>", { silent = true, desc = "Toggle Undotree" })

-- Rename under the cursor
vim.keymap.set("n", "<leader>rn", function()
  return ":IncRename " .. vim.fn.expand("<cword>")
end, { expr = true, desc = "Rename under cursor" })
