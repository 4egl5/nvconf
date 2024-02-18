return {
	-- install treesitter, for syntax highlighting
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	config = function()
		local config = require("nvim-treesitter.configs")
		config.setup({
			-- ensure certain languages highlighter downloaded
			ensure_installed = {
				"bash",
				"csv",
				"c",
				"comment",
				"cpp",
				"lua",
				"java",
				"json",
				"kotlin",
				"markdown",
				"markdown_inline",
				"python",
				"rust",
				"regex",
				"sql",
			},
			highlight = {
				enable = true,
			},
			-- visual mode: highlight, press = -> indent
			indent = {
				enable = true,
			},
		})
	end,
}
