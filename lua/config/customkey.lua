-- luacheck: ignore
-- Custom Keymap functions
local M = {}

-- Function to shorten keymap options
M.opts = function(additional_options)
  return vim.tbl_extend("force", { noremap = true, silent = true }, additional_options)
end

-- Universal map function for setting keymaps
local function universal_map(modes, tbl)
  vim.keymap.set(modes, tbl[1], tbl[2], tbl[3])
end

-- Universal map function for deleting keymaps
local function universal_del(modes, tbl)
  vim.keymap.del(modes, tbl[1])
end

-- Generate map and delmap functions for all mode combinations in ascending order
local modes = { "i", "n", "v", "x" }

-- Helper function to check if the mode is in ascending order
local function isInAscendingOrder(modes)
  local order = { i = 1, n = 2, v = 3, x = 4 }
  for i = 1, #modes - 1 do
    if order[modes[i]] >= order[modes[i + 1]] then
      return false
    end
  end
  return true
end

-- Generate functions for all combinations
for _, mode1 in ipairs(modes) do
  for _, mode2 in ipairs(modes) do
    for _, mode3 in ipairs(modes) do
      local modeCombination = { mode1, mode2, mode3 }
      if isInAscendingOrder(modeCombination) then
        -- For triples of modes
        local modeString = table.concat(modeCombination)
        M[modeString .. "map"] = function(tbl)
          universal_map(modeCombination, tbl)
        end
        M["d" .. modeString .. "map"] = function(tbl)
          universal_del(modeCombination, tbl)
        end
      end
    end
    if mode1 ~= mode2 and isInAscendingOrder({ mode1, mode2 }) then
      -- For pairs of modes
      M[mode1 .. mode2 .. "map"] = function(tbl)
        universal_map({ mode1, mode2 }, tbl)
      end
      M["d" .. mode1 .. mode2 .. "map"] = function(tbl)
        universal_del({ mode1, mode2 }, tbl)
      end
    end
  end
  -- For individual modes
  M[mode1 .. "map"] = function(tbl)
    universal_map(mode1, tbl)
  end
  M["d" .. mode1 .. "map"] = function(tbl)
    universal_del(mode1, tbl)
  end
end

return M
