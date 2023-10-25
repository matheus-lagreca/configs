return {
	"kdheepak/lazygit.nvim",
	version = "*",
	config = function()
		require('neo-tree').setup {}
		vim.keymap.set('n', '<leader>gg', '<cmd>LazyGit<CR>')
	end,
}
