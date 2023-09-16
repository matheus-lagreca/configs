-- cloak
require('cloak').setup({
  enabled = true,
  cloak_character = '*',
  highlight_group = 'Comment',
  cloak_length = nil, -- Provide a number if you want to hide the true length of the value.
  patterns = {
    {
      file_pattern = '.env*',
      cloak_pattern = '=.+'
    },
  },
})

vim.keymap.set('n', '<leader>zc', '<cmd>ToggleCloak<cr>')

local wk = require('which-key')
wk.register({
  z = {
    c = { '<cmd>ToggleCloak<cr>', 'cloak' },
  },
}, { prefix = '<leader>' })
