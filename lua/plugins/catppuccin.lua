return {
	-- install catppuccin, colorScheme
	"catppuccin/nvim",
	name = "catppuccin",
	priority = 1000,

	config = function()
		require("catppuccin").setup({
			flavour = "mocha",
			color_overrides = {
				mocha = {
					base = "#1e1e1e",
					surface0 = "#353535",
					mantle = "#121212",
				},
			},
		})
		-- change colorScheme
		vim.cmd.colorscheme("catppuccin")
	end,
}
