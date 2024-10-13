return {
	"nvim-treesitter/nvim-treesitter",
	lazy = true,
	event = { "BufReadPre", "BufNewFile" },
	build = ":TSUpdate",
	dependencies = {
		"windwp/nvim-ts-autotag",
	},
	opts = {
		indent = {
			enable = true,
		},
		autotag = {
			enable = true,
		},
		ensure_installed = {
			"javascript",
			"typescript",
			"tsx",
			"yaml",
			"json",
			"toml",
			"html",
			"css",
			"bash",
			"lua",
			"gitignore",
			"python",
			"java",
			"rust",
			"tsx",
			"markdown",
			"markdown_inline",
		},
		auto_install = true,
		highlight = {
			enable = true,
			additional_vim_regex_highlighting = true,
		},
		incremental_selection = {
			enable = true,
			keymaps = {
				init_selection = "<C-s>",
				node_incremental = "<C-s>",
				scope_incremental = false,
				node_decremental = "<BS>",
			},
		},
	},
}
