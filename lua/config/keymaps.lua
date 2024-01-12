-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
-- luacheck: ignore

-- Require custom keymap functions
local opts = require("config.customkey").opts
local nmap = require("config.customkey").nmap
local imap = require("config.customkey").imap
local xmap = require("config.customkey").xmap
local nxmap = require("config.customkey").nxmap

-- Regex to rename all occurrences of the word under the cursor
local rename = [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]]

-- Use J without moving the cursor
nmap({ "J", "mzJ`z" })

-- Paste without losing the current register in Visual modes
xmap({ "p", [["_dP]] })

-- Rename under the cursor
nmap({ "<leader>zr", rename, opts({ desc = "Rename Under the Cursor" }) })

-- Run command and paste output
nmap({ "<leader>zp", [[:r!]], opts({ desc = "Run Command and Paste Output" }) })

-- Delete into the void register
nxmap({ "<leader>zd", [["_d]], opts({ desc = "Delete Into The Void Register" }) })

-- Correct to last typo in insert mode
imap({ "<C-l>", "<c-g>u<Esc>[s1z=`]a<c-g>u", opts({ desc = "Correct last typo" }) })

----------------------------------------------- Plugin Mappings -------------------------------------------------------

-- Open Dashboard
nmap({ "<leader>;", "<cmd>Dashboard<CR>", opts({ desc = "Open Dashboard" }) })

-- Toggle Treesj
nmap({ "<leader>zm", "<cmd>TSJToggle<CR>", opts({ desc = "Toggle Split/Join Code Block" }) })

-- Run Code
nmap({ "<leader>zc", "<cmd>Jaq<CR>", opts({ desc = "Run Code" }) })

-- Toggle Undotree
nmap({ "<leader>zu", "<cmd>UndotreeToggle<CR>", opts({ desc = "Toggle Undotree" }) })

-- Toggle Barbecue
nmap({ "<leader>zb", "<cmd>Barbecue toggle<CR>", opts({ desc = "Toggle Barbecue" }) })

-- Go to Neorg "notes" workspace
nmap({ "<leader>zn", "<cmd>Neorg workspace notes<CR>", opts({ desc = "Go to Neorg Notes Workspace" }) })

-- Toggle Symbols Outline
nmap({ "<leader>zo", "<cmd>Outline<CR>", opts({ desc = "Toggle Symbols Outline" }) })

-- Open Oil
nmap({ "-", "<cmd>Oil --float<CR>", opts({ desc = "Open Parent Directory" }) })
