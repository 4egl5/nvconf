return {
	-- a fancy status bar
	"nvim-lualine/lualine.nvim",
	dependencies = {
		"nvim-tree/nvim-web-devicons",
	},
	config = function()
		require("lualine").setup({
			options = {
				theme = "codedark",
			},
			-- path = 1 show relative path
			-- path = 2 show absolute path
			sections = {
				lualine_c = { { "filename", path = 1 } },
			},
			inactive_sections = {
				lualine_c = { { "filename", path = 1 } },
			},
		})
	end,
}
