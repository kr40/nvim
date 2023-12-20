return {
  -- Provides new operator motions to make it very easy to perform quick substitutions and exchange
  {
    "gbprod/substitute.nvim",
    event = "LazyFile",
    keys = {
      {
        "s",
        mode = "n",
        function()
          require("substitute").operator()
        end,
        noremap = true,
      },
      {
        "ss",
        mode = "n",
        function()
          require("substitute").line()
        end,
        noremap = true,
      },
      {
        "s",
        mode = "x",
        function()
          require("substitute").visual()
        end,
        noremap = true,
      },
      {
        "S",
        mode = "n",
        function()
          require("substitute").eol()
        end,
        noremap = true,
      },
      {
        "sx",
        mode = "n",
        function()
          require("substitute.exchange").operator()
        end,
        noremap = true,
      },
      {
        "sxx",
        mode = "n",
        function()
          require("substitute.exchange").line()
        end,
        noremap = true,
      },
      {
        "X",
        mode = "x",
        function()
          require("substitute.exchange").visual()
        end,
        noremap = true,
      },
    },
    opts = {
      {
        on_substitute = nil,
        yank_substituted_text = false,
        preserve_cursor_position = false,
        modifiers = nil,
        highlight_substituted_text = {
          enabled = true,
          timer = 500,
        },
        range = {
          --[[ prefix = "s",
          prompt_current_text = false,
          confirm = false,
          complete_word = false,
          subject = nil,
          range = nil,
          suffix = "",
          auto_apply = false,
          cursor_position = "end", ]]
        },
        exchange = {
          motion = false,
          use_esc_to_cancel = true,
          preserve_cursor_position = false,
        },
      },
    },
  },
}
