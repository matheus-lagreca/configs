local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fF', builtin.git_files, {})
vim.keymap.set('n', '<leader>fg', '<cmd>lua require("telescope").extensions.live_grep_args.live_grep_args()<CR>')
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fs', builtin.lsp_document_symbols, {})
vim.keymap.set('n', '<leader>fr', builtin.lsp_references, {})
-- vim.keymap.set('n', '<leader>fi', '<cmd>AdvancedGitSearch<CR>')
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
vim.keymap.set('n', '<leader>fw', builtin.grep_string, {})
vim.keymap.set('n', '<leader>fo', builtin.oldfiles, {})
vim.keymap.set('n', '<leader>fc', builtin.commands, {})

-- extensions
require('telescope').load_extension('fzf')
require('telescope').load_extension('git_worktree')
require('telescope').load_extension('live_grep_args')
require('telescope').load_extension('undo')
require('telescope').load_extension('neoclip')
-- TODO: learn how quick lists work
-- config
local actions = require('telescope.actions')
local telescope = require('telescope')
telescope.setup({
  defaults = {
    mappings = {
      i = {
        ["<C-j>"] = actions.move_selection_next,
        ["<C-k>"] = actions.move_selection_previous,
        ["<C-h>"] = actions.cycle_history_next,
        ["<C-l>"] = actions.cycle_history_prev,
      },
    },
  }
})

-- which key
local wk = require('which-key')
wk.register({
  f = {
    name = 'Find',
    f = { 'Find Files' },
    F = { 'Find Git Files' },
    g = { 'Live Grep' },
    b = { 'Find Buffers' },
    s = { 'Find Symbols' },
    r = { 'Find References' },
    h = { 'Find Help' },
    w = { 'Find Word' },
    o = { 'Find Old Files' },
    c = { 'Find Commands' },
  }
}, { prefix = '<leader>' })
