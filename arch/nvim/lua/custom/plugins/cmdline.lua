return {
	'VonHeikemen/fine-cmdline.nvim',
	dependencies = { 'MunifTanjim/nui.nvim' },

	config = function()
		vim.api.nvim_set_keymap('n', ':', '<cmd>FineCmdline<CR>', { noremap = true })
		-- vim.api.nvim_set_keymap('n', '<leader>sq', '<cmd>FineCmdline vim /<CR>', { noremap = true })

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
	end,
}
