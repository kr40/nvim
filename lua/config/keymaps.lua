-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
-- luacheck: ignore

-- Require custom keymap functions
local opts = require("config.user.customkey").opts
local k = require("config.user.customkey")

-- Regex to rename all occurrences of the word under the cursor
local rename = [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]]

-- Use J without moving the cursor
k.nmap({ "J", "mzJ`z" })

-- Paste without losing the current register in Visual modes
k.xmap({ "p", [["_dP]] })

-- Rename under the cursor
k.nmap({ "<leader>zr", rename, opts({ desc = "Rename Under the Cursor" }) })

-- Run commands and paste output
k.nmap({ "<leader>zp", [[:r!]], opts({ desc = "Run Command and Paste Output" }) })

-- Delete into the void register
k.nmap({ "<leader>zd", [["_d]], opts({ desc = "Delete Into The Void Register" }) })

-- Correct the last typo in insert mode
k.imap({ "<C-l>", "<c-g>u<Esc>[s1z=`]a<c-g>u", opts({ desc = "Correct Last Typo" }) })
