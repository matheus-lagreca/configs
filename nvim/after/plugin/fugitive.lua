vim.keymap.set('n', '<leader>gs', vim.cmd.Git)
vim.keymap.set("n", "<leader>gb", "<cmd>G branch -a<CR>")
vim.keymap.set("n", "<leader>gt", "<cmd>G difftool -y<CR>")
vim.keymap.set("n", "<leader>go", "<cmd>tabo<CR>")

-- merge
-- ]c
-- From left W to middle d2o
-- from the right W to middle d3o
vim.keymap.set("n", "<leader>gM", "<cmd>Gvdiffsplit!<CR>")

vim.keymap.set("n", "<leader>gL", "<cmd>G log<CR>")
