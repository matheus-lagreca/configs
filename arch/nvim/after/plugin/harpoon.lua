local mark = require('harpoon.mark')
local ui = require('harpoon.ui')

vim.keymap.set('n', '<leader>a', mark.add_file)
vim.keymap.set('n', '<C-e>', ui.toggle_quick_menu)

vim.keymap.set('n', '<leader>h', function() ui.nav_file(1) end)
vim.keymap.set('n', '<leader>j', function() ui.nav_file(2) end)
vim.keymap.set('n', '<leader>k', function() ui.nav_file(3) end)
vim.keymap.set('n', '<leader>l', function() ui.nav_file(4) end)

local wk = require('which-key')
wk.register({
  a = {'Harpoon add'},
  h = "which_key_ignore",
  j = "which_key_ignore",
  k = "which_key_ignore",
  l = "which_key_ignore",
}, {prefix = '<leader>'})
