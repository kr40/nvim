-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
-- luacheck: ignore

-- Require custom keymap functions
local opts = require("config.customkey").opts
local k = require("config.customkey")

-- Close all open buffers before opening dashboard
local openDashboard = function()
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
k.imap({ "<C-l>", "<c-g>u<Esc>[s1z=`]a<c-g>u", opts({ desc = "Correct last typo" }) })

----------------------------------------------- Plugin Mappings -------------------------------------------------------

-- Open Dashboard
k.nmap({ "<leader>;", openDashboard, opts({ desc = "Open Dashboard" }) })

-- Toggle Treesj
k.nmap({ "<leader>zm", "<cmd>TSJToggle<CR>", opts({ desc = "Toggle Split/Join Code Block" }) })

-- Run Code
k.nmap({ "<leader>zc", "<cmd>Jaq<CR>", opts({ desc = "Run Code" }) })

-- Toggle Undotree
k.nmap({ "<leader>zu", "<cmd>UndotreeToggle<CR>", opts({ desc = "Toggle Undotree" }) })

-- Toggle Barbecue
k.nmap({ "<leader>zb", "<cmd>Barbecue toggle<CR>", opts({ desc = "Toggle Barbecue" }) })

-- Go to Neorg "notes" workspace
k.nmap({ "<leader>zn", "<cmd>Neorg workspace notes<CR>", opts({ desc = "Go to Neorg Notes Workspace" }) })

-- Toggle Symbols Outline
k.nmap({ "<leader>zo", "<cmd>Outline<CR>", opts({ desc = "Toggle Symbols Outline" }) })

-- Open Oil
k.nmap({ "-", "<cmd>Oil --float<CR>", opts({ desc = "Open Parent Directory" }) })

----------------------------------------------- Deleted Mappings ------------------------------------------------------

k.dnvmap({ "<A-j>" }) -- Adding mini.move
k.dnvmap({ "<A-k>" }) -- Adding mini.move
