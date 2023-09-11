local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>f', builtin.find_files, {})
vim.keymap.set('n', '<C-p>', builtin.git_files, {})
vim.keymap.set('n', '<leader>ps', function()
  builtin.grep_string({ search = vim.fn.input("Grep > ") });
end)

-- extensions
require('telescope').load_extension('fzf')
require("telescope").load_extension("git_worktree")
--neoclip

local wk = require('which-key')
wk.register({
  f = { 'Find files' },
  p = { 'Git files' },
  s = { 'Search and Replace' },
}, { prefix = '<leader>' })
