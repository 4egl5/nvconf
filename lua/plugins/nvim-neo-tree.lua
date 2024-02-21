return {
	-- install neo-tree, file explorer
	-- install nerfonts before using this plugins: https://www.nerdfonts.com/font-downloads
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons",
		"MunifTanjim/nui.nvim",
		"3rd/image.nvim",
	},

	config = function()
		require("neo-tree").setup({
			filesystem = {
				filtered_items = {
					visible = true,
					hide_dofiles = false,
					hide_gitignored = false,
				},
			},
		})
		-- press leader + b toggle the tree, leader default key: \
		vim.keymap.set("n", "<leader>b", ":Neotree toggle filesystem reveal left<CR>")
	end,
}
