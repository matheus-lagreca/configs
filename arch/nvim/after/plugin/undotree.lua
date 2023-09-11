vim.keymap.set('n', '<leader>u', vim.cmd.UndotreeToggle)

local wk = require('which-key')
wk.register({
  u = {'Toggle undotree'},
}, {prefix = '<leader>'})
