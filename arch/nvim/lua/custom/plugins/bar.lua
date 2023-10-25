return {
	-- Set lualine as statusline
	'nvim-lualine/lualine.nvim',
	-- See `:help lualine.txt`
	opts = {
		options = {
			icons_enabled = false,
			-- theme = 'ayu_mirage',
			-- theme = 'iceberg_dark',
			-- theme = 'pywal',
			theme = 'nightfly',
			component_separators = '|',
			section_separators = '',
		},
	},
}
