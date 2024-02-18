return {
	"numToStr/Comment.nvim",
	opts = {},
	lazy = false,
	config = function()
		require("Comment").setup({
			toggler = {
				line = "<leader>c",
				block = "<leader>cc",
			},

			opleader = {
				line = "<leader>c",
				block = "<leader>cc",
			},
		})
	end,
}
