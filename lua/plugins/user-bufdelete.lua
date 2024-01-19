return {
  -- luacheck: ignore
  -- Delete buffers without messing up window layout
  {
    "famiu/bufdelete.nvim",
    cmd = { "Bdelete", "Bwipeout" },
    keys = {
      {
        "<leader>bd",
        function()
          local bd = require("bufdelete").bufdelete
          if vim.bo.modified then
            local choice = vim.fn.confirm(("Save changes to %q?"):format(vim.fn.bufname()), "&Yes\n&No\n&Cancel")
            if choice == 1 then
              vim.cmd.write()
              bd(0)
            elseif choice == 2 then
              bd(0, true)
            end
          else
            bd(0)
          end
        end,
        desc = "Delete Buffer",
      },
      {
        "<leader>bD",
        function()
          require("bufdelete").bufdelete(0, true)
        end,
        desc = "Delete Buffer (Force)",
      },
    },
  },
}
