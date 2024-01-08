-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
-- luacheck: ignore

-- Function to shorten keymap options
local function opts(additional_options)
  return vim.tbl_extend("force", { noremap = true, silent = true }, additional_options)
end

-- Shorten vim.keymap to keymap
local keymap = vim.keymap

-- Regex to rename all occurrences of the word under the cursor
local rename = [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]]

-- Use J without moving the cursor
keymap.set("n", "J", "mzJ`z")

-- Paste without losing the current register in Visual modes
keymap.set("x", "p", [["_dP]])

-- Rename under the cursor
keymap.set("n", "<leader>zr", rename, opts({ desc = "Rename Under the Cursor" }))

-- Run command and paste output
keymap.set("n", "<leader>zp", [[:r!]], opts({ desc = "Run Command and Paste Output" }))

-- Delete into the void register
keymap.set({ "n", "x" }, "<leader>zd", [["_d]], opts({ desc = "Delete Into The Void Register" }))

-- Make current file executable
keymap.set("n", "<leader>zx", "<cmd>!chmod a+x %<CR>", opts({ desc = "Make Current File Executable" }))

----------------------------------------------- Plugin Mappings -------------------------------------------------------

-- Open Dashboard
keymap.set("n", "<leader>;", "<cmd>Dashboard<CR>", opts({ desc = "Open Dashboard" }))

-- Toggle Treesj
keymap.set("n", "<leader>zm", "<cmd>TSJToggle<CR>", opts({ desc = "Toggle Split/Join Code Block" }))

-- Run Code
keymap.set("n", "<leader>zc", "<cmd>Jaq<CR>", opts({ desc = "Run Code" }))

-- Toggle Undotree
keymap.set("n", "<leader>zu", "<cmd>UndotreeToggle<CR>", opts({ desc = "Toggle Undotree" }))

-- Toggle Barbecue
keymap.set("n", "<leader>zb", "<cmd>Barbecue toggle<CR>", opts({ desc = "Toggle Barbecue" }))

-- Go to Neorg "notes" workspace
keymap.set("n", "<leader>zn", "<cmd>Neorg workspace notes<CR>", opts({ desc = "Go to Neorg Notes Workspace" }))

-- Toggle Symbols Outline
keymap.set("n", "<leader>zo", "<cmd>Outline<CR>", opts({ desc = "Toggle Symbols Outline" }))

-- Open Oil
keymap.set("n", "-", "<CMD>Oil --float<CR>", opts({ desc = "Open Parent Directory" }))
