return {
  -- Provides new operator motions to make it very easy to perform quick substitutions and exchange
  {
    "gbprod/substitute.nvim",
    event = "LazyFile",
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
