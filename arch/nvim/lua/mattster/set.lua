-- line numbers
vim.opt.nu = true
vim.opt.relativenumber = true

-- indent
vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true

vim.opt.smartindent = true
vim.opt.wrap = false

-- undotree can undo from past
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

--search
vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.termguicolors = false
vim.opt.scrolloff = 8

vim.opt.updatetime = 50
