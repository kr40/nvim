-- luacheck: ignore

-- Netew winsize
-- @default = 20
vim.g.netrw_winsize = 30

-- Netrw banner
-- 0 : Disable banner
-- 1 : Enable banner
vim.g.netrw_banner = 1 -- Disabling banner breaks netrw

-- Keep the current directory and the browsing directory synced.
-- This helps you avoid the move files error.
vim.g.netrw_keepdir = 0

-- Show directories first (sorting)
vim.g.netrw_sort_sequence = [[[\/]$,*]]

-- Human-readable files sizes
vim.g.netrw_sizestyle = "H"

-- Netrw list style
-- 0 : thin listing (one file per line)
-- 1 : long listing (one file per line with timestamp information and file size)
-- 2 : wide listing (multiple files in columns)
-- 3 : tree style listing
vim.g.netrw_liststyle = 3

-- Show hidden files
-- 0 : show all files
-- 1 : show not-hidden files
-- 2 : show hidden files only
vim.g.netrw_hide = 1

-- Open files in split
-- 0 : re-use the same window (default)
-- 1 : horizontally splitting the window first
-- 2 : vertically   splitting the window first
-- 3 : open file in new tab
-- 4 : act like "P" (ie. open previous window)
vim.g.netrw_browse_split = 3

-- Enable recursive copy of directories in *nix systems
vim.g.netrw_localcopydircmd = "cp -r"

-- Enable recursive creation of directories in *nix systems
vim.g.netrw_localmkdir = "mkdir -p"

-- Enable recursive removal of directories in *nix systems
-- NOTE: we use 'rm' instead of 'rmdir' (default) to be able to remove non-empty directories
vim.g.netrw_localrmdir = "rm -r"

local is_empty = function(str)
  return str == "" or str == nil
end

local function netrw_maps()
  if vim.bo.filetype ~= "netrw" then
    return
  end

  local opts = { silent = true }
  -- Toggle dotfiles
  vim.api.nvim_buf_set_keymap(0, "n", ".", "gh", opts)

  -- Open file and close netrw
  vim.api.nvim_buf_set_keymap(0, "n", "l", "<CR>:Lexplore<CR>", opts)

  -- Open file or directory
  vim.api.nvim_buf_set_keymap(0, "n", "o", "<CR>", opts)

  -- Show netrw help in a floating (or maybe sidebar?) window
  -- TODO: implement show_help function so we can implement this mapping
  --[[ vim.api.nvim_buf_set_keymap(
    0,
    "n",
    "?",
    ":lua require('doom.core.settings.netrw').show_help()<CR>",
    opts
  ) ]]

  -- Close netrw
  vim.api.nvim_buf_set_keymap(0, "n", "q", ":Lexplore<CR>", opts)

  -- Create a new file and save it
  vim.api.nvim_buf_set_keymap(0, "n", "ff", "%:w<CR>:buffer #<CR>", opts)

  -- Create a new directory
  vim.api.nvim_buf_set_keymap(0, "n", "fa", "d", opts)

  -- Rename file
  vim.api.nvim_buf_set_keymap(0, "n", "fr", "R", opts)

  -- Remove file or directory
  vim.api.nvim_buf_set_keymap(0, "n", "fd", "D", opts)

  -- Copy marked file
  vim.api.nvim_buf_set_keymap(0, "n", "fc", "mc", opts)

  -- Copy marked file in one step, with this we can put the cursor in a directory
  -- after marking the file to assign target directory and copy file
  vim.api.nvim_buf_set_keymap(0, "n", "fC", "mtmc", opts)

  -- Move marked file
  vim.api.nvim_buf_set_keymap(0, "n", "fx", "mm", opts)

  -- Move marked file in one step, same as fC but for moving files
  vim.api.nvim_buf_set_keymap(0, "n", "fX", "mtmm", opts)

  -- Execute commands in marked file or directory
  vim.api.nvim_buf_set_keymap(0, "n", "fe", "mx", opts)

  -- Show a list of marked files and directories
  vim.api.nvim_buf_set_keymap(
    0,
    "n",
    "fm",
    ':echo "Marked files:\n" . join(netrw#Expose("netrwmarkfilelist"), "\n")<CR>',
    opts
  )

  -- Show target directory
  vim.api.nvim_buf_set_keymap(0, "n", "ft", ':echo "Target: " . netrw#Expose("netrwmftgt")<CR>', opts)

  -- Toggle the mark on a file or directory
  vim.api.nvim_buf_set_keymap(0, "n", "<TAB>", "mf", opts)

  -- Unmark all the files in the current buffer
  vim.api.nvim_buf_set_keymap(0, "n", "<S-TAB>", "mF", opts)

  -- Remove all the marks on all files
  vim.api.nvim_buf_set_keymap(0, "n", "<Leader><TAB>", "mu", opts)

  -- Create a bookmark
  vim.api.nvim_buf_set_keymap(0, "n", "bc", "mb", opts)

  -- Remove the most recent bookmark
  vim.api.nvim_buf_set_keymap(0, "n", "bd", "mB", opts)

  -- Jumo to the most recent bookmark
  vim.api.nvim_buf_set_keymap(0, "n", "bj", "gb", opts)
end

local function draw_icons()
  if vim.bo.filetype ~= "netrw" then
    return
  end
  local is_devicons_available, devicons = xpcall(require, debug.traceback, "nvim-web-devicons")
  if not is_devicons_available then
    return
  end
  local default_signs = {
    netrw_dir = {
      text = "",
      texthl = "netrwDir",
    },
    netrw_file = {
      text = "",
      texthl = "netrwPlain",
    },
    netrw_exec = {
      text = "",
      texthl = "netrwExe",
    },
    netrw_link = {
      text = "",
      texthl = "netrwSymlink",
    },
  }

  local bufnr = vim.api.nvim_win_get_buf(0)

  -- Unplace all signs
  vim.fn.sign_unplace("*", { buffer = bufnr })

  -- Define default signs
  for sign_name, sign_opts in pairs(default_signs) do
    vim.fn.sign_define(sign_name, sign_opts)
  end

  local cur_line_nr = 1
  local total_lines = vim.fn.line("$")
  while cur_line_nr <= total_lines do
    -- Set default sign
    local sign_name = "netrw_file"

    -- Get line contents
    local line = vim.fn.getline(cur_line_nr)

    if is_empty(line) then
      -- If current line is an empty line (newline) then increase current line count
      -- without doing nothing more
      cur_line_nr = cur_line_nr + 1
    else
      if line:find("/$") then
        sign_name = "netrw_dir"
      elseif line:find("@%s+-->") then
        sign_name = "netrw_link"
      elseif line:find("*$") then
        sign_name:find("netrw_exec")
      else
        local filetype = line:match("^.*%.(.*)")
        if not filetype and line:find("LICENSE") then
          filetype = "md"
        elseif line:find("rc$") then
          filetype = "conf"
        end

        -- If filetype is still nil after manually setting extensions
        -- for unknown filetypes then let's use 'default'
        if not filetype then
          filetype = "default"
        end

        local icon, icon_highlight = devicons.get_icon(line, filetype, { default = "" })
        sign_name = "netrw_" .. filetype
        vim.fn.sign_define(sign_name, {
          text = icon,
          texthl = icon_highlight,
        })
      end
      vim.fn.sign_place(cur_line_nr, sign_name, sign_name, bufnr, {
        lnum = cur_line_nr,
      })
      cur_line_nr = cur_line_nr + 1
    end
  end
end

vim.api.nvim_create_autocmd("FileType", {
  pattern = { "netrw" },
  callback = function()
    draw_icons()
    netrw_maps()
  end,
})

vim.api.nvim_create_autocmd("TextChanged", {
  pattern = { "*" },
  callback = function()
    draw_icons()
  end,
})
