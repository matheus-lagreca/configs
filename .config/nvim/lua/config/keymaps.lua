-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local keymap = vim.keymap
local opts = { noremap = true, silent = true }

-- Select all
keymap.set("n", "<C-a>", "gg<S-v>G")

-- tmux navigator
keymap.set("n", "<C-h>", ":TmuxNavigateLeft<CR>", opts)
keymap.set("n", "<C-j>", ":TmuxNavigateDown<CR>", opts)
keymap.set("n", "<C-k>", ":TmuxNavigateUp<CR>", opts)
keymap.set("n", "<C-l>", ":TmuxNavigateRight<CR>", opts)

-- split
keymap.set("n", "<leader>_", ":vsplit<CR>", opts)
