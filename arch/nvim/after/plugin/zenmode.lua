vim.keymap.set("n", "<leader>zz", function()
  require("zen-mode").setup {
    window = {
      backdrop = 0.95, -- shade the backdrop of the Zen window. Set to 1 to keep the same as Normal
      width = 120,     -- width of the Zen window
      height = 30,     -- height of the Zen window
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
