return {
  -- luacheck: ignore
  {
    "LintaoAmons/cd-project.nvim",
    cmd = { "CdProject", "CdProjectAdd", "CdProjectBack" },
    keys = {
      { "<leader>pp", "<cmd>CdProject<cr>", desc = "Open Projects" },
      { "<leader>pa", "<cmd>CdProjectAdd<cr>", desc = "Add Project Dir" },
      { "<leader>pb", "<cmd>CdProjectBack<cr>", desc = "Switch to Prev Project" },
    },
    opts = {
      project_dir_pattern = { ".git", ".gitignore", "Cargo.toml", "package.json", "go.mod" },
      choice_format = "both",
      projects_picker = "vim-ui",
      hooks = {
        {
          callback = function(dir)
            vim.notify("switched to dir: " .. dir)
          end,
        },
        {
          callback = function(dir)
            local k = require("config.user.customkey")
            local opts = require("config.user.customkey").opts
            local Util = require("lazyvim.util")
            if dir == "/home/kr40/.config" then
              k.nmap({ "<leader><space>", "<cmd>Telescope git_files<cr>", opts({ desc = "Find Files (cwd)" }) })
            else
              k.nmap({
                "<leader><space>",
                Util.telescope("files", { cwd = false }),
                opts({ desc = "Find Files (cwd)" }),
              })
            end
          end,
        },
      },
    },
  },
}
