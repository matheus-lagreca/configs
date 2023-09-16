---@diagnostic disable: undefined-global
local colors = require("galaxyline.themes.colors").default
--- Palette:
local bg = "#202328"
local fg = "#bbc2cf"
local yellow = "#ECBE7B"
local cyan = "#008080"
local darkblue = "#081633"
local green = "#98be65"
local orange = "#FF8800"
local violet = "#a9a1e1"
local magenta = "#c678dd"
local blue = "#51afef"
local red = "#ec5f67"

require("galaxyline").section.left[1] = {
  FileSize = {
    provider = "FileSize",
    condition = function()
      return vim.fn.empty(vim.fn.expand("%:t")) ~= 1
    end,
    icon = "",
    highlight = { colors.green, colors.purple },
    separator = "",
    separator_highlight = { colors.purple, colors.darkblue },
  }
}
