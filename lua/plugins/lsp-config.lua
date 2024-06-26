return {
	{
		"williamboman/mason-lspconfig.nvim",
		dependencies = {"williamboman/mason.nvim",},
        config = function()
			require("mason-lspconfig").setup({
				ensure_installed = { "lua_ls", "tsserver", "clangd" },
			})
		end,
	},
	{
		"neovim/nvim-lspconfig",
		config = function()
			local lspconfig = require("lspconfig")
			lspconfig.lua_ls.setup({})
			lspconfig.clangd.setup({})
			lspconfig.tsserver.setup({})
			vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
			vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, {})
		end,
	},
}
