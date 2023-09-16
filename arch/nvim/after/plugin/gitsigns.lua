require('gitsigns').setup {
  signs = {
    add          = { text = '+' },
    change       = { text = '│' },
    delete       = { text = '_' },
    topdelete    = { text = '‾' },
    changedelete = { text = '~' },
    untracked    = { text = '┆' },
  }
}

vim.keymap.set('n', '<leader>gj', '<cmd>lua require"gitsigns".next_hunk()<CR>')
vim.keymap.set('n', '<leader>gk', '<cmd>lua require"gitsigns".prev_hunk()<CR>')
vim.keymap.set('n', '<leader>gha', '<cmd>lua require"gitsigns".stage_hunk()<CR>')
vim.keymap.set('n', '<leader>ghr', '<cmd>lua require"gitsigns".reset_hunk()<CR>')
vim.keymap.set('n', '<leader>ghb', '<cmd>lua require"gitsigns".blame_line()<CR>')

local wk = require("which-key")
wk.register(
  {
    g = {
      name = "Git",
      j = "Next hunk",
      k = "Prev hunk",
      h = {
        name = "Hunk",
        a = "Stage hunk",
        r = "Reset hunk",
        b = "Blame line"
      },
    }
  },
  { prefix = "<leader>" }
)
