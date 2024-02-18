return {
	{
		"williamboman/mason.nvim",
		config = function()
			require("mason").setup()
		end,
	},
	{
		-- install language server
		"williamboman/mason-lspconfig.nvim",
		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = {
					-- "awk_ls",
					"bashls",
					"clangd",
					"jsonls",
					"jdtls",
					"jedi_language_server",
					"ltex",
					"lua_ls",
					"marksman",
					-- "pylyzer",
					"pyre",
					"pyright",
					"pylsp",
					"rust_analyzer",
					"sqlls",
				},
			})
		end,
	},
	{
		--[[
		    ◍ pylyzer $ cargo install --root . --version 0.0.51 --locked pylyzer
		▶ # [94/94] Compiling rustpython-parser-vendored v0.3.0
	  ◍ python-lsp-server $ /home/vostok/.local/share/nvim/mason/packages/python-lsp-server/venv/bin/python -m pip --disable-pip-version-check install -U python-lsp-server[all]==1.10.0
		▶ # [66/66] Obtaining dependency information for tomlkit>=0.10.1 from https://files.pythonhosted.org/packages/6e/43/159750d32481f16e34cc60090b53bc0a14314ad0c1f67a9bb64f3f3a0551/tomlkit-0.12.3-py3-none-any.whl.metadata

]]
		--

		-- neovim communicate to lsp server
		"neovim/nvim-lspconfig",
		config = function()
			local capabilities = require("cmp_nvim_lsp").default_capabilities()

			local lspconfig = require("lspconfig")
			-- lspconfig..setup({capabilities = capabilities})
			lspconfig.bashls.setup({ capabilities = capabilities })
			lspconfig.clangd.setup({ capabilities = capabilities })
			lspconfig.jsonls.setup({ capabilities = capabilities })
			lspconfig.jdtls.setup({ capabilities = capabilities })
			lspconfig.jedi_language_server.setup({ capabilities = capabilities })
			lspconfig.ltex.setup({ capabilities = capabilities })
			lspconfig.lua_ls.setup({ capabilities = capabilities })
			lspconfig.marksman.setup({ capabilities = capabilities })
			lspconfig.pyre.setup({ capabilities = capabilities })
			lspconfig.pyright.setup({ capabilities = capabilities })

			-- lspconfig.pylyzer.setup({capabilities = capabilities})
			lspconfig.pylsp.setup({ capabilities = capabilities })
			lspconfig.rust_analyzer.setup({ capabilities = capabilities })
			lspconfig.sqlls.setup({ capabilities = capabilities })
			-- help manual when cursor hover
			vim.keymap.set("n", "h", vim.lsp.buf.hover, {})
			-- show variable occurance in file
			vim.keymap.set("n", "j", vim.lsp.buf.definition, {})
			-- action manuaal for handling lsp server warning / errors
			vim.keymap.set("n", "<leader>oo", vim.lsp.buf.code_action, {})
			-- autocomplete press: ctrl+x ctrl+o
		end,
	},
}
