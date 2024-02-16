<!-- markdownlint-disable MD045 MD033 MD013 -->

# 💤 My Neovim Config based on LazyVim

<a href="https://dotfyle.com/kr40/nvim"><img src="https://dotfyle.com/kr40/nvim/badges/plugins?style=for-the-badge" /></a>
<a href="https://dotfyle.com/kr40/nvim"><img src="https://dotfyle.com/kr40/nvim/badges/leaderkey?style=for-the-badge" /></a>
<a href="https://dotfyle.com/kr40/nvim"><img src="https://dotfyle.com/kr40/nvim/badges/plugin-manager?style=for-the-badge" /></a>

## Install Instructions

Clone the repository and install the plugins:

```sh
git clone git@github.com:kr40/nvim ~/.config/kr40/nvim
NVIM_APPNAME=kr40/nvim/ nvim --headless +"Lazy! sync" +qa
```

Open Neovim with this config:

```sh
NVIM_APPNAME=kr40/nvim/ nvim
```

## List of Installed Plugins

<!-- This list was generated using "lua for _, v in pairs(require("lazy").plugins()) do print(v[1]) end" -->

- [AckslD/nvim-neoclip.lua](https://github.com/AckslD/nvim-neoclip.lua)
- [HiPhish/rainbow-delimiters.nvim](https://github.com/HiPhish/rainbow-delimiters.nvim)
- [JoosepAlviste/nvim-ts-context-commentstring](https://github.com/JoosepAlviste/nvim-ts-context-commentstring)
- [L3MON4D3/LuaSnip](https://github.com/L3MON4D3/LuaSnip)
- [LazyVim/LazyVim](https://github.com/LazyVim/LazyVim)
- [LintaoAmons/cd-project.nvim](https://github.com/LintaoAmons/cd-project.nvim)
- [MunifTanjim/nui.nvim](https://github.com/MunifTanjim/nui.nvim)
- [RRethy/vim-illuminate](https://github.com/RRethy/vim-illuminate)
- [SmiteshP/nvim-navic](https://github.com/SmiteshP/nvim-navic)
- [ThePrimeagen/harpoon](https://github.com/ThePrimeagen/harpoon)
- [Wansmer/treesj](https://github.com/Wansmer/treesj)
- [abecodes/tabout.nvim](https://github.com/abecodes/tabout.nvim)
- [akinsho/bufferline.nvim](https://github.com/akinsho/bufferline.nvim)
- [aznhe21/actions-preview.nvim](https://github.com/aznhe21/actions-preview.nvim)
- [b0o/SchemaStore.nvim](https://github.com/b0o/SchemaStore.nvim)
- [catppuccin/nvim](https://github.com/catppuccin/nvim)
- [chrisgrieser/nvim-genghis](https://github.com/chrisgrieser/nvim-genghis)
- [chrisgrieser/nvim-puppeteer](https://github.com/chrisgrieser/nvim-puppeteer)
- [chrisgrieser/nvim-scissors](https://github.com/chrisgrieser/nvim-scissors)
- [chrisgrieser/nvim-spider](https://github.com/chrisgrieser/nvim-spider)
- [chrisgrieser/nvim-various-textobjs](https://github.com/chrisgrieser/nvim-various-textobjs)
- [debugloop/telescope-undo.nvim](https://github.com/debugloop/telescope-undo.nvim)
- [dstein64/vim-startuptime](https://github.com/dstein64/vim-startuptime)
- [echasnovski/mini.ai](https://github.com/echasnovski/mini.ai)
- [echasnovski/mini.indentscope](https://github.com/echasnovski/mini.indentscope)
- [echasnovski/mini.move](https://github.com/echasnovski/mini.move)
- [echasnovski/mini.operators](https://github.com/echasnovski/mini.operators)
- [famiu/bufdelete.nvim](https://github.com/famiu/bufdelete.nvim)
- [folke/flash.nvim](https://github.com/folke/flash.nvim)
- [folke/lazy.nvim](https://github.com/folke/lazy.nvim)
- [folke/neoconf.nvim](https://github.com/folke/neoconf.nvim)
- [folke/neodev.nvim](https://github.com/folke/neodev.nvim)
- [folke/noice.nvim](https://github.com/folke/noice.nvim)
- [folke/persistence.nvim](https://github.com/folke/persistence.nvim)
- [folke/todo-comments.nvim](https://github.com/folke/todo-comments.nvim)
- [folke/tokyonight.nvim](https://github.com/folke/tokyonight.nvim)
- [folke/trouble.nvim](https://github.com/folke/trouble.nvim)
- [folke/which-key.nvim](https://github.com/folke/which-key.nvim)
- [hedyhli/outline.nvim](https://github.com/hedyhli/outline.nvim)
- [hrsh7th/cmp-buffer](https://github.com/hrsh7th/cmp-buffer)
- [hrsh7th/cmp-calc](https://github.com/hrsh7th/cmp-calc)
- [hrsh7th/cmp-cmdline](https://github.com/hrsh7th/cmp-cmdline)
- [hrsh7th/cmp-nvim-lsp](https://github.com/hrsh7th/cmp-nvim-lsp)
- [hrsh7th/cmp-path](https://github.com/hrsh7th/cmp-path)
- [hrsh7th/nvim-cmp](https://github.com/hrsh7th/nvim-cmp)
- [iamcco/markdown-preview.nvim](https://github.com/iamcco/markdown-preview.nvim)
- [is0n/jaq-nvim](https://github.com/is0n/jaq-nvim)
- [jay-babu/mason-nvim-dap.nvim](https://github.com/jay-babu/mason-nvim-dap.nvim)
- [jbyuki/one-small-step-for-vimkind](https://github.com/jbyuki/one-small-step-for-vimkind)
- [kawre/neotab.nvim](https://github.com/kawre/neotab.nvim)
- [kevinhwang91/nvim-bqf](https://github.com/kevinhwang91/nvim-bqf)
- [kr40/nvim-macros](https://github.com/kr40/nvim-macros)
- [kylechui/nvim-surround](https://github.com/kylechui/nvim-surround)
- [leoluz/nvim-dap-go](https://github.com/leoluz/nvim-dap-go)
- [lewis6991/gitsigns.nvim](https://github.com/lewis6991/gitsigns.nvim)
- [linux-cultist/venv-selector.nvim](https://github.com/linux-cultist/venv-selector.nvim)
- [lukas-reineke/headlines.nvim](https://github.com/lukas-reineke/headlines.nvim)
- [lukas-reineke/indent-blankline.nvim](https://github.com/lukas-reineke/indent-blankline.nvim)
- [mawkler/modicator.nvim](https://github.com/mawkler/modicator.nvim)
- [mfussenegger/nvim-dap-python](https://github.com/mfussenegger/nvim-dap-python)
- [mfussenegger/nvim-dap](https://github.com/mfussenegger/nvim-dap)
- [mfussenegger/nvim-lint](https://github.com/mfussenegger/nvim-lint)
- [mg979/vim-visual-multi](https://github.com/mg979/vim-visual-multi)
- [monaqa/dial.nvim](https://github.com/monaqa/dial.nvim)
- [neovim/nvim-lspconfig](https://github.com/neovim/nvim-lspconfig)
- [numToStr/Comment.nvim](https://github.com/numToStr/Comment.nvim)
- [nvim-lua/plenary.nvim](https://github.com/nvim-lua/plenary.nvim)
- [nvim-lualine/lualine.nvim](https://github.com/nvim-lualine/lualine.nvim)
- [nvim-neo-tree/neo-tree.nvim](https://github.com/nvim-neo-tree/neo-tree.nvim)
- [nvim-neorg/neorg](https://github.com/nvim-neorg/neorg)
- [nvim-neotest/neotest-go](https://github.com/nvim-neotest/neotest-go)
- [nvim-neotest/neotest-python](https://github.com/nvim-neotest/neotest-python)
- [nvim-neotest/neotest](https://github.com/nvim-neotest/neotest)
- [nvim-pack/nvim-spectre](https://github.com/nvim-pack/nvim-spectre)
- [nvim-telescope/telescope-fzf-native.nvim](https://github.com/nvim-telescope/telescope-fzf-native.nvim)
- [nvim-telescope/telescope-symbols.nvim](https://github.com/nvim-telescope/telescope-symbols.nvim)
- [nvim-telescope/telescope-ui-select.nvim](https://github.com/nvim-telescope/telescope-ui-select.nvim)
- [nvim-telescope/telescope.nvim](https://github.com/nvim-telescope/telescope.nvim)
- [nvim-tree/nvim-web-devicons](https://github.com/nvim-tree/nvim-web-devicons)
- [nvim-treesitter/nvim-treesitter-context](https://github.com/nvim-treesitter/nvim-treesitter-context)
- [nvim-treesitter/nvim-treesitter-textobjects](https://github.com/nvim-treesitter/nvim-treesitter-textobjects)
- [nvim-treesitter/nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter)
- [nvimdev/dashboard-nvim](https://github.com/nvimdev/dashboard-nvim)
- [olexsmir/gopher.nvim](https://github.com/olexsmir/gopher.nvim)
- [onsails/lspkind.nvim](https://github.com/onsails/lspkind.nvim)
- [piersolenski/telescope-import.nvim](https://github.com/piersolenski/telescope-import.nvim)
- [rafamadriz/friendly-snippets](https://github.com/rafamadriz/friendly-snippets)
- [rcarriga/nvim-dap-ui](https://github.com/rcarriga/nvim-dap-ui)
- [rcarriga/nvim-notify](https://github.com/rcarriga/nvim-notify)
- [roobert/tailwindcss-colorizer-cmp.nvim](https://github.com/roobert/tailwindcss-colorizer-cmp.nvim)
- [sQVe/sort.nvim](https://github.com/sQVe/sort.nvim)
- [saadparwaiz1/cmp_luasnip](https://github.com/saadparwaiz1/cmp_luasnip)
- [smjonas/inc-rename.nvim](https://github.com/smjonas/inc-rename.nvim)
- [smjonas/live-command.nvim](https://github.com/smjonas/live-command.nvim)
- [stevearc/conform.nvim](https://github.com/stevearc/conform.nvim)
- [stevearc/dressing.nvim](https://github.com/stevearc/dressing.nvim)
- [stevearc/oil.nvim](https://github.com/stevearc/oil.nvim)
- [theHamsta/nvim-dap-virtual-text](https://github.com/theHamsta/nvim-dap-virtual-text)
- [tpope/vim-fugitive](https://github.com/tpope/vim-fugitive)
- [tzachar/highlight-undo.nvim](https://github.com/tzachar/highlight-undo.nvim)
- [uga-rosa/ccc.nvim](https://github.com/uga-rosa/ccc.nvim)
- [utilyre/barbecue.nvim](https://github.com/utilyre/barbecue.nvim)
- [williamboman/mason-lspconfig.nvim](https://github.com/williamboman/mason-lspconfig.nvim)
- [williamboman/mason.nvim](https://github.com/williamboman/mason.nvim)
- [windwp/nvim-autopairs](https://github.com/windwp/nvim-autopairs)
- [windwp/nvim-ts-autotag](https://github.com/windwp/nvim-ts-autotag)
- [xiyaowong/link-visitor.nvim](https://github.com/xiyaowong/link-visitor.nvim)
- [zbirenbaum/copilot-cmp](https://github.com/zbirenbaum/copilot-cmp)
- [zbirenbaum/copilot.lua](https://github.com/zbirenbaum/copilot.lua)
