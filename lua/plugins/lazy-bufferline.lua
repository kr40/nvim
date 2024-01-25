return {
  -- luacheck: ignore
  -- Repaced mini.bufremove with bufdelete, Added Harpoon functionality to show index and sort
  {
    "akinsho/bufferline.nvim",
    keys = {
      { "<leader>bc", "<Cmd>BufferLinePick<CR>", desc = "Pick Buffer" },
      { "<leader>bC", "<Cmd>BufferLinePickClose<CR>", desc = "Pick Buffer Close" },
    },
    opts = {
      options = {
        numbers = function(opts)
          local harpoon = require("harpoon")
          local buffer_file_path = vim.fn.fnamemodify(vim.api.nvim_buf_get_name(opts.id), ":.")
          local marks = harpoon:list()

          for index = 1, marks:length() do
            if buffer_file_path == marks:get(index).value then
              return string.format("%s %s", "󰀱", opts.raise(tostring(index)))
            end
          end
          return ""
        end,
        close_command = function(n)
          require("bufdelete").bufdelete(n, false)
        end,
        right_mouse_command = function(n)
          require("bufdelete").bufdelete(n, false)
        end,
        diagnostics = "nvim_lsp",
        always_show_bufferline = false,
        diagnostics_indicator = function(_, _, diag)
          local icons = require("lazyvim.config").icons.diagnostics
          local ret = (diag.error and icons.Error .. diag.error .. " " or "")
            .. (diag.warning and icons.Warn .. diag.warning or "")
          return vim.trim(ret)
        end,
        offsets = {
          {
            filetype = "neo-tree",
            text = "Neo-tree",
            highlight = "Directory",
            text_align = "left",
          },
        },
        sort_by = function(buffer_a, buffer_b)
          local function getHarpoonIndex(buf_id)
            local harpoon = require("harpoon")
            local buffer_file_path = vim.fn.fnamemodify(vim.api.nvim_buf_get_name(buf_id), ":.")
            local marks = harpoon:list()

            for index = 1, marks:length() do
              if buffer_file_path == marks:get(index).value then
                return index
              end
            end
            return math.huge
          end

          local index_a = getHarpoonIndex(buffer_a.id)
          local index_b = getHarpoonIndex(buffer_b.id)

          return index_a < index_b
        end,
      },
    },
  },
}
