return {
  -- Org mode for Neovim, (Uses SPC zn)
  {
    "nvim-neorg/neorg",
    build = ":Neorg sync-parsers",
    -- tag = "*",
    dependencies = { "nvim-lua/plenary.nvim" },
    ft = "norg",
    keys = {
      {
        "<leader>zn",
        "<cmd>Neorg workspace notes<CR>",
        mode = "n",
        noremap = true,
        silent = true,
        desc = "Go to Neorg Notes Workspace",
      },
    },
    cmd = "Neorg",
    opts = {
      load = {
        ["core.defaults"] = {}, -- Loads default behaviour
        ["core.concealer"] = {}, -- Adds pretty icons to your documents
        ["core.completion"] = { -- Adds completion to your documents
          config = {
            engine = "nvim-cmp",
          },
        },
        ["core.dirman"] = { -- Manages Neorg workspaces
          config = {
            workspaces = {
              notes = "~/notes",
            },
          },
        },
      },
    },
  },
}
