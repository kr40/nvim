return {
  -- luacheck: ignore
  -- Fast file navigation (Uses SPC a)
  {
    "ThePrimeagen/harpoon",
    branch = "harpoon2",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-telescope/telescope.nvim",
    },
    event = "VeryLazy",
    config = function()
      local harpoon = require("harpoon")
      local k = require("config.user.customkey")
      local opts = require("config.user.customkey").opts

      harpoon:setup({
        settings = {
          save_on_toggle = true, -- Save state on window toggle
        },
      })

      -- Telescope Config
      local conf = require("telescope.config").values
      local function toggle_telescope(harpoon_files)
        local file_paths = {}
        for _, item in ipairs(harpoon_files.items) do
          table.insert(file_paths, item.value)
        end

        require("telescope.pickers")
          .new({}, {
            prompt_title = "Harpoon",
            finder = require("telescope.finders").new_table({
              results = file_paths,
            }),
            previewer = conf.file_previewer({}),
            sorter = conf.generic_sorter({}),
          })
          :find()
      end

      -- Telescope Harpoon List
      k.nmap({
        "<leader>at",
        function()
          toggle_telescope(harpoon:list())
        end,
        opts({ desc = "Telescope Harpoon List" }),
      })

      -- Append to Harpoon List
      k.nmap({
        "<leader>aa",
        function()
          harpoon:list():append()
        end,
        opts({ desc = "Append File to Harpoon" }),
      })

      -- Display Harpoon List
      k.nmap({
        "<leader>al",
        function()
          harpoon.ui:toggle_quick_menu(harpoon:list())
        end,
        opts({ desc = "List Harpoon Files" }),
      })

      -- Go to Previous Harpoon File
      k.nmap({
        "<leader>a[",
        function()
          harpoon:list():prev({ ui_nav_wrap = true })
        end,
        opts({ desc = "Previous Harpoon File" }),
      })

      -- Go to Next Harpoon File
      k.nmap({
        "<leader>a]",
        function()
          harpoon:list():next({ ui_nav_wrap = true })
        end,
        opts({ desc = "Next Harpoon File" }),
      })

      -- Select Harpoon File from List (1-5)
      for i = 1, 5 do
        k.nmap({
          string.format("<C-%s>", i),
          function()
            harpoon:list():select(i)
          end,
        })
      end
    end,
  },
}
