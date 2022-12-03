local nnoremap = require("mattster.keymap").nnoremap

nnoremap("<leader>pv", "<cmd>Ex<CR>")

-- Custom Binds
nnoremap("<leader>w", "<cmd>w<CR>")
nnoremap("<leader>q", "<cmd>q!<CR>")

-- Windows
nnoremap("<C-l>", "<C-w>l<CR>")
nnoremap("<C-h>", "<C-w>h<CR>")
nnoremap("<C-k>", "<C-w>k<CR>")
nnoremap("<C-j>", "<C-w>j<CR>")

-- Buffers
nnoremap("<leader>c", "<cmd>BufferDelete<CR>")
nnoremap("<S-l>", "<cmd>BufferNext<CR>")
nnoremap("<S-h>", "<cmd>BufferPrevious<CR>")
nnoremap("<leader>bl", "<cmd>BufferCloseBuffersRight<CR>")
nnoremap("<leader>bh", "<cmd>BufferCloseBuffersLeft<CR>")

-- Packer/nvim
nnoremap("<leader>pS", "<cmd>PackerSync<CR>")
nnoremap("<leader>ps", "<cmd>so<CR>")

-- LSP
nnoremap("<leader>li", "<cmd>Mason<CR>")

-- Drawer
nnoremap("<leader>e", "<cmd>NeoTreeShowToggle<CR>")

-- git
nnoremap("<leader>gb", "<cmd>GitBlameToggle<CR>")
nnoremap("<leader>gg", "<cmd>LazyGit<CR>")

-- move
nnoremap("<C-d>", "<C-d>zz")
nnoremap("<C-u>", "<C-u>zz")
