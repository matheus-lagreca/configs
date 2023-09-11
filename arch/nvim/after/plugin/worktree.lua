require('git-worktree').setup()
-- require('telescope'.load_extension('git_worktree')

vim.keymap.set("n", "<Leader>gww", "<CMD> lua require('telescope').extensions.git_worktree.git_worktrees()<CR>",
  { noremap = true, silent = true })
vim.keymap.set("n", "<Leader>gwa", "<CMD> lua require('telescope').extensions.git_worktree.create_git_worktree()<CR>",
  { noremap = true, silent = true })

local wk = require("which-key")
wk.register(
  {
    g = {
      name = "Git",
      w = {
        name = "Worktree",
        w = "List worktrees",
        a = "Add worktree"
      }
    }
  },
  { prefix = "<leader>" }
)
