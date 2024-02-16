return {
  -- File management plugin for Neovim
  {
    "chrisgrieser/nvim-genghis",
    dependencies = "stevearc/dressing.nvim",
    keys = {
      { "<leader>fx", "<cmd>Chmodx<CR>", mode = { "n" }, desc = "Make File Executable" },
      { "<leader>fn", "<cmd>New<CR>", mode = { "n" }, desc = "New File" },
      { "<leader>fd", "<cmd>Trash<CR>", mode = { "n" }, desc = "Delete File" },
      { "<leader>fD", "<cmd>Duplicate<CR>", mode = { "n" }, desc = "Duplicate File" },
      { "<leader>fn", "<cmd>NewFromSelection<CR>", mode = { "x" }, desc = "New File from Selection" },
      { "<leader>fN", "<cmd>Rename<CR>", mode = { "n" }, desc = "Rename File" },
      { "<leader>fm", "<cmd>Move<CR>", mode = { "n" }, desc = "Move & Rename File" },
      { "<leader>fM", "<cmd>MoveToFolderInCwd<CR>", mode = { "n" }, desc = "Move to folder (cwd)" },
      { "<leader>yn", "<cmd>CopyFilename<CR>", mode = { "n" }, desc = "Yank File Name" },
      { "<leader>yp", "<cmd>CopyFilepath<CR>", mode = { "n" }, desc = "Yank Absolute File Path" },
      { "<leader>y`", "<cmd>CopyFilepathWithTilde<CR>", mode = { "n" }, desc = "Yank Absolute File Path (~/)" },
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
      "MoveToFolderInCwd", -- Move to folder in current working directory
      "Trash", -- Delete the current file
      "CopyFilename", -- Copy the current filename
      "CopyFilepath", -- Copy the current filepath (absolute)
      "CopyFilepathWithTilde", -- Copy the current filepath (absoulute, with ~)
      "CopyRelativePath", -- Copy the current filepath (relative)
      "CopyDirectoryPath", -- Copy the current directory path (absolute)
      "CopyRelativeDirectoryPath", -- Copy the current directory path (relative)
      "Chmodx", -- Make the current file executable
    },
  },
}
