return {
  -- Git like undo history plugin (Uses SPC zu)
  {
    "mbbill/undotree",
    cmd = "UndotreeToggle",
    keys = {
      {
        "<leader>zu",
        "<cmd>UndotreeToggle<CR>",
        mode = "n",
        noremap = true,
        silent = true,
        desc = "Toggle Undotree",
      },
    },
  },
}
