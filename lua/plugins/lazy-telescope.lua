return {
  -- luacheck: ignore
  -- Setup telescope to ignore certain files, added Telescope extensions (Undo)
  {
    "nvim-telescope/telescope.nvim",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "debugloop/telescope-undo.nvim",
    },
    keys = {
      {
        "<leader>fp",
        function()
          require("telescope.builtin").find_files({ cwd = require("lazy.core.config").options.root })
        end,
        desc = "Find Plugin File",
      },
      {
        "<leader>su",
        function()
          require("telescope").extensions.undo.undo()
        end,
        desc = "Undo History",
      },
    },
    opts = function()
      local actions = require("telescope.actions")
      local Util = require("lazyvim.util")

      local open_with_trouble = function(...)
        return require("trouble.providers.telescope").open_with_trouble(...)
      end
      local open_selected_with_trouble = function(...)
        return require("trouble.providers.telescope").open_selected_with_trouble(...)
      end
      local find_files_no_ignore = function()
        local action_state = require("telescope.actions.state")
        local line = action_state.get_current_line()
        Util.telescope("find_files", { no_ignore = true, default_text = line })()
      end
      local find_files_with_hidden = function()
        local action_state = require("telescope.actions.state")
        local line = action_state.get_current_line()
        Util.telescope("find_files", { hidden = true, default_text = line })()
      end

      -- Load Telescope Extensions
      require("telescope").load_extension("undo")

      return {
        defaults = {
          prompt_prefix = " ",
          selection_caret = " ",
          file_ignore_patterns = {
            "node_modules/.*",
            "%.env",
            "package%-lock.json",
            "lazy%-lock.json",
            ".git/.*",
            "auto%-cpufreq/.*",
            "%.deb",
            "luarocks%-*",
            "lazygit",
            "Library/.*",
            "Music/.*",
            "Downloads/.*",
            "Pictures/.*",
            "Movies/.*",
          },
          extensions = {
            undo = {
              use_delta = true,
              use_custom_command = nil, -- setting this implies `use_delta = false`. Accepted format is: { "bash", "-c", "echo '$DIFF' | delta" }
              side_by_side = true,
              diff_context_lines = vim.o.scrolloff,
              entry_format = "state #$ID, $STAT, $TIME",
              time_format = "",
              saved_only = false,
              layout_strategy = "vertical",
              layout_config = {
                preview_height = 0.8,
              },
              mappings = {
                i = {
                  ["<cr>"] = require("telescope-undo.actions").yank_additions,
                  ["<S-cr>"] = require("telescope-undo.actions").yank_deletions,
                  ["<C-cr>"] = require("telescope-undo.actions").restore,
                  -- alternative defaults, for users whose terminals do questionable things with modified <cr>
                  ["<C-y>"] = require("telescope-undo.actions").yank_deletions,
                  ["<C-r>"] = require("telescope-undo.actions").restore,
                },
                n = {
                  ["y"] = require("telescope-undo.actions").yank_additions,
                  ["Y"] = require("telescope-undo.actions").yank_deletions,
                  ["u"] = require("telescope-undo.actions").restore,
                },
              },
            },
          },

          -- open files in the first window that is an actual file.
          -- use the current window if no other window is available.
          get_selection_window = function()
            local wins = vim.api.nvim_list_wins()
            table.insert(wins, 1, vim.api.nvim_get_current_win())
            for _, win in ipairs(wins) do
              local buf = vim.api.nvim_win_get_buf(win)
              if vim.bo[buf].buftype == "" then
                return win
              end
            end
            return 0
          end,
          mappings = {
            i = {
              ["<c-t>"] = open_with_trouble,
              ["<a-t>"] = open_selected_with_trouble,
              ["<a-i>"] = find_files_no_ignore,
              ["<a-h>"] = find_files_with_hidden,
              ["<C-Down>"] = actions.cycle_history_next,
              ["<C-Up>"] = actions.cycle_history_prev,
              ["<C-f>"] = actions.preview_scrolling_down,
              ["<C-b>"] = actions.preview_scrolling_up,
            },
            n = {
              ["q"] = actions.close,
            },
          },
        },
      }
    end,
  },
}
