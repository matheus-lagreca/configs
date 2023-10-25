vim.keymap.set('n', '<leader>gs', vim.cmd.Git)
vim.keymap.set("n", "<leader>gb", "<cmd>G branch -a<CR>")
vim.keymap.set("n", "<leader>gt", "<cmd>G difftool -y<CR>")
vim.keymap.set("n", "<leader>go", "<cmd>tabo<CR>")

vim.keymap.set("n", "<leader>gM", "<cmd>Gvdiffsplit!<CR>")

vim.keymap.set("n", "<leader>gL", "<cmd>G log<CR>")

local wk = require("which-key")
wk.register(
  {
    g = {
      name = "Git",
      s = "Fugitive",
      b = "branch",
      t = "difftool",
      o = "tabo",
      M = "diffsplit",
      L = "Git log"
    }
  },
  { prefix = "<leader>" }
)
