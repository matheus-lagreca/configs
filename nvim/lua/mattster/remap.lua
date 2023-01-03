vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- Custom Binds
vim.keymap.set("n", "<leader>w", "<cmd>w<CR>")
vim.keymap.set("n", "<leader>q", "<cmd>q!<CR>")

-- Packer/nvim
vim.keymap.set("n", "<leader>oS", "<cmd>PackerSync<CR>")
vim.keymap.set("n", "<leader>os", "<cmd>so<CR>")

-- Windows
vim.keymap.set("n", "<C-l>", "<C-w>l<CR>")
vim.keymap.set("n", "<C-h>", "<C-w>h<CR>")
vim.keymap.set("n", "<C-k>", "<C-w>k<CR>")
vim.keymap.set("n", "<C-j>", "<C-w>j<CR>")

-- Buffers
vim.keymap.set("n", "<leader>c", "<cmd>BufferDelete<CR>")
vim.keymap.set("n", "<S-l>", "<cmd>BufferNext<CR>")
vim.keymap.set("n", "<S-h>", "<cmd>BufferPrevious<CR>")
vim.keymap.set("n", "<leader>bl", "<cmd>BufferCloseBuffersRight<CR>")
vim.keymap.set("n", "<leader>bh", "<cmd>BufferCloseBuffersLeft<CR>")

-- Drawer
vim.keymap.set("n", "<leader>e", "<cmd>NeoTreeFocusToggle<CR>")

-- git
vim.keymap.set("n", "<leader>gb", "<cmd>GitBlameToggle<CR>")
vim.keymap.set("n", "<leader>gg", "<cmd>LazyGit<CR>")






-- totally not stolen remaps

-- move highlights
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")

-- J doesnt move cursor
vim.keymap.set("n", "J", "mzJ`z")

-- half page jump centralize
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
-- search centralize
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- greatest remap ever
vim.keymap.set("x", "<leader>p", "\"_dP")

-- next greates remap ever : asbjornHaland
vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("v", "<leader>y", "\"+y")
vim.keymap.set("n", "<leader>Y", "\"+Y")

-- same as above but with delete
vim.keymap.set("n", "<leader>d", "\"_d")
vim.keymap.set("v", "<leader>d", "\"_d")

-- control c == esc
vim.keymap.set("i", "<C-c>", "<Esc>")

-- format
vim.keymap.set("n", "<leader>F", function()
  vim.lsp.buf.format()
end)

vim.keymap.set("n", "<leader>l", "<cmd>Prettier<CR>")

-- search and replace
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- make file executable
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })
--vim.keymap.set("", "", "")
