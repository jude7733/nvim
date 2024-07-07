return {
	"nvimdev/lspsaga.nvim",
	config = function()
		require("lspsaga").setup({
			ui = {
				code_action = "",
			},
			code_action_prompt = {
				virtual_text = false,
			},
			code_action = {
				num_shortcut = true,
				show_server_name = true,
				keys = {
					-- string | table type
					quit = "q",
					exec = "<CR>",
				},
			},
			rename = {
				keys = {
					quit = "<ESC>",
					exec = "<CR>",
					mark = "x",
					confirm = "<CR>",
					in_select = true,
				},
			},
		})
	end,
	dependencies = {
		"nvim-treesitter/nvim-treesitter",
		"nvim-tree/nvim-web-devicons",
	},
}
