---@type ChadrcConfig
local M = {}

M.ui = {
  theme = "gruvbox",
  statusline = {
    theme = "vscode_colored",
    separator_style = "block",
  },
  hl_override = {
    Comment = { italic = true },
    ["@comment"] = { italic = true },
  },
  tabufline = {
    enabled = false,
  },
}

return M
