---@diagnostic disable: undefined-global
vim.api.nvim_set_keymap('n', ':', '<cmd>FineCmdline<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<CR>', '<cmd>FineCmdline<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>sq', '<cmd>FineCmdline vim /<CR>', { noremap = true })

require('fine-cmdline').setup({
  cmdline = {
    prompt = ' '
  },
  popup = {
    position = {
      row = '20%',
    },
    size = {
      width = '30%',
    },
  },
})
