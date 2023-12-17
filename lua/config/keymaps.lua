-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
-- luacheck: ignore

-- Function to shorten keymap options
local function opts(additional_options)
  return vim.tbl_extend("force", { noremap = true, silent = true }, additional_options)
end

-- Function for IncRename
local function rename()
  return ":IncRename " .. vim.fn.expand("<cword>")
end

-- Shorten vim.keymap to keymap
local keymap = vim.keymap

-- Use J without moving the cursor
keymap.set("n", "J", "mzJ`z")

-- Paste without losing the current register
keymap.set("x", "p", [["_dP]])

-- Make current file executable
keymap.set("n", "<leader>mx", "<cmd>!chmod a+x %<CR>", opts({ desc = "Make Executable (a+x)" }))

-- Toggle Dashboard
keymap.set("n", "<leader>d", "<cmd>Dashboard<CR>", opts({ desc = "Open Dashboard" }))

-- Toggle Treesj
keymap.set("n", "<leader>tm", "<cmd>TSJToggle<CR>", opts({ desc = "Toggle Split/Join Code Block" }))

-- Run Code
keymap.set("n", "<leader>rr", "<cmd>Jaq<CR>", opts({ desc = "Run Code" }))

-- Toggle Undotree
keymap.set("n", "<leader>tu", "<cmd>UndotreeToggle<CR>", opts({ desc = "Toggle Undotree" }))

-- Rename under the cursor
keymap.set("n", "<leader>rn", rename, opts({ expr = true, desc = "Rename Under Cursor" }))
