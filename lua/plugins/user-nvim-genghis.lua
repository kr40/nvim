return {
  -- File management plugin for Neovim (Uses SPC zx for Chmodx)
  {
    "chrisgrieser/nvim-genghis",
    dependencies = "stevearc/dressing.nvim",
    keys = {
      { "<leader>fx", "<cmd>Chmodx<CR>", mode = { "n" }, desc = "Make File Executable" },
      { "<leader>fn", "<cmd>New<CR>", mode = { "n" }, desc = "New File" },
      { "<leader>fd", "<cmd>Trash<CR>", mode = { "n" }, desc = "Delete File" },
      { "<leader>fD", "<cmd>Duplicate<CR>", mode = { "n" }, desc = "Duplicate File" },
      { "<leader>fN", "<cmd>NewFromSelection<CR>", mode = { "x" }, desc = "New File from Selection" },
      { "<leader>fm", "<cmd>Move<CR>", mode = { "n" }, desc = "Move & Rename File" },
      { "<leader>yn", "<cmd>CopyFilename<CR>", mode = { "n" }, desc = "Yank File Name" },
      { "<leader>yp", "<cmd>CopyFilepath<CR>", mode = { "n" }, desc = "Yank Absolute File Path" },
      { "<leader>yP", "<cmd>CopyRelativePath<CR>", mode = { "n" }, desc = "Yank Relative File Path" },
      { "<leader>yd", "<cmd>CopyDirectoryPath<CR>", mode = { "n" }, desc = "Yank Absolute Directory Path" },
      { "<leader>yD", "<cmd>CopyRelativeDirectoryPath<CR>", mode = { "n" }, desc = "Yank Absolute Directory Path" },
    },
    cmd = {
      "New", -- Create a new file
      "Duplicate", -- Duplicate the current file
      "NewFromSelection", -- Create a new file from the current selection
      "Rename", -- Rename the current file
      "Move", -- Move and rename the current file
      "Trash", -- Delete the current file
      "CopyFilename", -- Copy the current filename
      "CopyFilepath", -- Copy the current filepath (absolute)
      "CopyRelativePath", -- Copy the current filepath (relative)
      "CopyDirectoryPath", -- Copy the current directory path (absolute)
      "CopyRelativeDirectoryPath", -- Copy the current directory path (relative)
      "Chmodx", -- Make the current file executable
    },
  },
}
