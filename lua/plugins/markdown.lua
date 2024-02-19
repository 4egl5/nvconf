-- return {
-- 	-- markdown previewer, require install deno: https://docs.deno.com/runtime/manual/getting_started/installation
-- 	-- install after deno installed
-- 	"toppair/peek.nvim",
-- 	event = { "VeryLazy" },
-- 	build = "deno task --quiet build:fast",
-- 	config = function()
-- 		require("peek").setup({})
-- 		-- refer to `configuration to change defaults`
-- 		vim.api.nvim_create_user_command("PeekOpen", require("peek").open, {})
-- 		vim.api.nvim_create_user_command("PeekClose", require("peek").close, {})
-- 	end,
-- }

return {
	-- markdown preview
	"ellisonleao/glow.nvim",
	cmd = "Glow",
	event = { "VeryLazy" },
	config = function()
		require("glow").setup({})
		vim.keymap.set("n", "<leader>p", ":Glow<CR>")
	end,
}
