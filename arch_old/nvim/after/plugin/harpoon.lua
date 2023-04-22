local mark = require('harpoon.mark')
local ui = require('harpoon.ui')

vim.keymap.set('n', '<leader>a', mark.add_file)
vim.keymap.set('n', '<C-e>', ui.toggle_quick_menu)

vim.keymap.set('n', '<C-S-h>', function() ui.nav_file(1) end)
vim.keymap.set('n', '<C-S-j>', function() ui.nav_file(2) end)
vim.keymap.set('n', '<C-S-k>', function() ui.nav_file(3) end)
vim.keymap.set('n', '<C-S-l>', function() ui.nav_file(4) end)
