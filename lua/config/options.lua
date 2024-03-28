-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
-- luacheck: ignore

-- Shorten vim.opt to opt
local opt = vim.opt

-- Disable swapfile
opt.swapfile = false

-- Disable backup
opt.backup = false

-- Disable writebackup
opt.writebackup = false

-- Color 120th column
opt.colorcolumn = "120"

-- Enable line wrap, and make it so that long lines wrap smartly
opt.wrap = true
opt.breakindent = true
opt.showbreak = string.rep(" ", 3)
opt.linebreak = true

-- Set encoding to utf-8
vim.scriptencoding = "utf-8"
opt.encoding = "utf-8"
opt.fileencoding = "utf-8"

-- Number of spaces that a <Tab> counts for while performing editing operations
opt.softtabstop = 2

-- Enable incremental search
opt.incsearch = true

-- Enable Spellcheck
opt.spell = true

-- Motions like "G" also move to the first char
opt.startofline = true

opt.clipboard = "unnamedplus"

-- Register templ file type
vim.filetype.add({ extension = { templ = "templ" } })
vim.treesitter.language.register("templ", "templ")

-- Setting the default python lsp to pyright instead of basedpyright
vim.g.lazyvim_python_lsp = "pyright"
