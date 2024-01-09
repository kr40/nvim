return {
  --[[
	  Surround plugin -
    add/delete/change can be done with the keymaps ys{motion}{char}, ds{char}, and cs{target}{replacement},
	  yss {surround current line}, yS and ySS are same ys and yss with new line,
    cS is same as cs with new line,
    <C-g>s is insert mode surround, <C-g>S is insert mode surround with new line,
    S is visual mode surround, gS is visual mode surround with new line,
    ]]
  {
    "kylechui/nvim-surround",
    version = "*",
    event = "LazyFile",
    opts = {},
  },
}
