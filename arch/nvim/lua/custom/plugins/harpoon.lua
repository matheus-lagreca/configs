return {
	"theprimeagen/harpoon",
	version = "*",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
		"MunifTanjim/nui.nvim",
	},
	config = function()
		mark = require('harpoon.mark')
		ui = require('harpoon.ui')

		vim.keymap.set('n', '<C-t>', mark.add_file, { desc = 'Harpoon: add mark' })
		vim.keymap.set('n', '<leader>e', ui.toggle_quick_menu, { desc = 'Harpoon: toggle quick menu' })

		vim.keymap.set('n', '<leader>h', function() ui.nav_file(1) end)
		vim.keymap.set('n', '<leader>j', function() ui.nav_file(2) end)
		vim.keymap.set('n', '<leader>k', function() ui.nav_file(3) end)
		vim.keymap.set('n', '<leader>l', function() ui.nav_file(4) end)
	end,
}
