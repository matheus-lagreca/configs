-- twilight
require('twilight').setup {
  dimming = {
    alpha = 0.25,
    color = { 'Normal', '#ffffff' },
  },
  context = 10,
  expand = {
    'function',
    'method',
    'table',
    'if_statement',
  },
  exclude = {}, -- exclude these filetypes
}

-- zen
vim.keymap.set("n", "<leader>zz", function()
  require("zen-mode").setup {
    window = {
      backdrop = 0.95, -- shade the backdrop of the Zen window. Set to 1 to keep the same as Normal
      width = 120,     -- width of the Zen window
      height = 60,     -- height of the Zen window
      options = {},
    },
    plugins = {
      options = {},
      tmux = { enabled = true }, -- disables the tmux statusline
      alacritty = {
        enabled = true,
        font = "21",
      },
    }
  }
  require("zen-mode").toggle()
  vim.wo.wrap = false
  vim.wo.number = true
  vim.wo.rnu = true
end)

vim.keymap.set('n', '<leader>zt', '<cmd>Twilight<cr>')

-- which key
require('which-key').setup {
  ["<leader>"] = "SPC",
  ["<space>"] = "SPC",
  ["<C>"] = "Ctrl",
  ["<A>"] = "Alt",
  ["<S>"] = "Shift",
  ["<cr>"] = "RET",
  ["<tab>"] = "TAB",
  z = {
    t = { '<cmd>Twilight<cr>', 'Toggle Twilight' },
  },
}
