return {
	"nvimtools/none-ls.nvim",
	config = function()
		local null_ls = require("null-ls")
		null_ls.setup({
			sources = {
				-- Type: :Mason -> Formatter and install stylua by presing i
				null_ls.builtins.formatting.stylua,
				null_ls.builtins.formatting.shfmt,
				null_ls.builtins.formatting.sql_formatter,
				null_ls.builtins.formatting.latexindent,
				null_ls.builtins.formatting.fixjson,
				null_ls.builtins.formatting.beautysh,
				null_ls.builtins.formatting.autoflake,
				null_ls.builtins.formatting.black,
				null_ls.builtins.formatting.isort,
				null_ls.builtins.formatting.cbfmt,
				-- null_ls.builtins.formatting.,        
				null_ls.builtins.diagnostics.eslint,
				null_ls.builtins.completion.spell,
			},
		})
		-- press = to auto-format the file
		vim.keymap.set("n", "=", vim.lsp.buf.format, {})
	end,
}
