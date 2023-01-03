local colors = require("galaxyline.themes.colors").default
--- Palette:
bg = "#202328"
fg = "#bbc2cf"
yellow = "#ECBE7B"
cyan = "#008080"
darkblue = "#081633"
green = "#98be65"
orange = "#FF8800"
violet = "#a9a1e1"
magenta = "#c678dd"
blue = "#51afef"
red = "#ec5f67"

 require("galaxyline").section.left[1] = {
     FileSize = {
         provider = "FileSize",
         condition = function()
             return vim.fn.empty(vim.fn.expand("%:t")) ~= 1
         end,
         icon = "   ",
         highlight = { colors.green, colors.purple },
         separator = "",
         separator_highlight = { colors.purple, colors.darkblue },
     }
 }
