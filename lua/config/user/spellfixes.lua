--------------------------------------------------------------------------------
-- INFO if abbreviations are not working, probably something has been mapped to
-- `<Space>` in insert mode
-----------------------------------------------------------------------------------

local spellfixes = {
  THe = "The",
  ahve = "have",
  brwoser = "browser",
  cant = "can't",
  cleitn = "client",
  curosr = "cursor",
  cosnt = "const",
  defualt = "default",
  doesnt = "doesn't",
  doestn = "doesn't",
  dont = "don't",
  dwon = "down",
  esle = "else",
  fales = "false",
  fiel = "file",
  flase = "false",
  fo = "of",
  fodler = "folder",
  hwo = "how",
  ignroe = "ignore",
  keybaord = "keyboard",
  lien = "line",
  markdwon = "markdown",
  mcuh = "much",
  msot = "most",
  nromal = "normal",
  nto = "not",
  ntoe = "note",
  oepn = "open",
  onyl = "only",
  ot = "to",
  reponse = "response",
  retrun = "return",
  seperate = "separate",
  seperator = "separator",
  shwo = "show",
  sicne = "since",
  teh = "the",
  ti = "it",
  tiem = "item",
  treu = "true",
  ture = "true",
  verison = "version",
  woudl = "would",
}

for wrong, correct in pairs(spellfixes) do
  -- TODO lua API for abbreviations for nvim 0.10
  -- vim.keymap.set("ia", wrong, correct)
  vim.cmd.inoreabbrev(wrong .. " " .. correct)
end
