return {
  -- Move lines and selections up and down with Alt + {h,j,k,l}
  {
    "echasnovski/mini.move",
    event = "VeryLazy",
    keys = {
      { "<M-j>", "<Cmd>lua MiniMove.move_line('down')<CR>", mode = "n" },
      { "<M-k>", "<Cmd>lua MiniMove.move_line('up')<CR>", mode = "n" },
      { "<M-j>", "<Cmd>lua MiniMove.move_selection('down')<CR>", mode = "v" },
      { "<M-k>", "<Cmd>lua MiniMove.move_selection('up')<CR>", mode = "v" },
    },
    opts = {
      -- Module mappings. Use `''` (empty string) to disable one.
      mappings = {
        -- Move visual selection in Visual mode. Defaults are Alt (Meta) + hjkl.
        left = "<M-h>",
        right = "<M-l>",
        down = "",
        up = "",

        -- Move current line in Normal mode
        line_left = "<M-h>",
        line_right = "<M-l>",
        line_down = "",
        line_up = "",
      },

      -- Options which control moving behavior
      options = {
        -- Automatically reindent selection during linewise vertical move
        reindent_linewise = true,
      },
    },
  },
}
