return {
	{
		-- install telescope, a fuzzy finder for neovim
		"nvim-telescope/telescope.nvim",
		branch = "0.1.x",
		dependencies = { "nvim-lua/plenary.nvim" },
		config = function()
			local builtin = require("telescope.builtin")
			-- n for normal mode
			-- leader key default: \
			-- live_grep: find string in files, require ripgrep: https://github.com/BurntSushi/ripgrep?tab=readme-ov-file#installation
			vim.keymap.set("n", "<leader>fg", builtin.live_grep, {})
			-- find_files: find file from directories
			vim.keymap.set("n", "<leader>ff", builtin.find_files, {})
		end,
	},
	{
		"nvim-telescope/telescope-ui-select.nvim",
		config = function()
			require("telescope").setup({
				extensions = {
					["ui-select"] = {
						require("telescope.themes").get_dropdown({}),
					},
				},
			})
			require("telescope").load_extension("ui-select")
		end,
	},
}
