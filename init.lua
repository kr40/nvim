-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

-- Function to wrap require in a pcall
local function safeRequire(module)
  local success, loadedModule = pcall(require, module)
  if success then
    return loadedModule
  end
  vim.cmd.echo("Error loading " .. module)
end

-- safeRequire user files
safeRequire("config.user.hl-colors")
safeRequire("config.user.netrw")
safeRequire("config.user.utils")
safeRequire("config.user.customkey")
safeRequire("config.user.spellfixes")
