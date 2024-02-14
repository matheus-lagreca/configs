return {
	"catppuccin/nvim",
	name = "catppuccin",
	lazy = false,
	priority = 1000,
	opts = function()
		return {
			require("catppuccin").setup({
				transparent_background = true, -- disables setting the background color.
			}),
		}
	end,
}
