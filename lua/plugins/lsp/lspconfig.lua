return {
	"neovim/nvim-lspconfig",
	dependencies = {
		"williamboman/mason.nvim",
		{ "saghen/blink.cmp" },
		"nvimdev/lspsaga.nvim",
		{ "antosha417/nvim-lsp-file-operations", config = true },
	},
	config = function(_, opts)
		local lspconfig = require("lspconfig")
		local mason_lspconfig = require("mason-lspconfig")
		local blink_cmp = require("blink.cmp")

		-- used to enable autocompletion (assign to every lsp server config)
		local capabilities = blink_cmp.get_lsp_capabilities()

		for server, config in pairs(opts.servers or {}) do
			config.capabilities = blink_cmp.get_lsp_capabilities(config.capabilities)
			lspconfig[server].setup(config)
		end

		-- Change the Diagnostic symbols in the sign column (gutter)
		local signs = { Error = " ", Warn = " ", Hint = "󰠠 ", Info = " " }
		for type, icon in pairs(signs) do
			local hl = "DiagnosticSign" .. type
			vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = "" })
		end

		mason_lspconfig.setup_handlers({
			-- default handler for installed servers
			function(server_name)
				if server_name ~= "rust_analyzer" then
					lspconfig[server_name].setup({
						capabilities = capabilities,
					})
				end
			end,
			["emmet_ls"] = function()
				lspconfig["emmet_ls"].setup({
					capabilities = capabilities,
					filetypes = { "html", "typescriptreact", "javascriptreact", "css", "sass", "scss", "less" },
				})
			end,
			["lua_ls"] = function()
				lspconfig["lua_ls"].setup({
					capabilities = capabilities,
					settings = {
						Lua = {
							-- make the language server recognize "vim" global
							diagnostics = {
								globals = { "vim" },
							},
							completion = {
								callSnippet = "Replace",
							},
						},
					},
				})
			end,
			["jsonls"] = function()
				lspconfig["jsonls"].setup({
					capabilities = capabilities,
					filetypes = { "json", "jsonc" },
				})
			end,
		})
	end,
}
