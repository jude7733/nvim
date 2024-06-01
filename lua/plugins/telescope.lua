local config = function()
	local telescope = require("telescope")
	local actions = require("telescope.actions")
	local open_with_trouble = require("trouble.sources.telescope").open

	telescope.setup({
		defaults = {
			path_display = { "smart" },
			mappings = {
				i = {
					["<C-k>"] = actions.move_selection_previous,
					["<C-j>"] = actions.move_selection_next,
					["<c-t>"] = open_with_trouble,
				},
				n = { ["<c-t>"] = open_with_trouble },
			},
		},
		pickers = {
			find_files = {
				theme = "dropdown",
				previewer = false,
				hidden = true,
			},
			buffers = {
				theme = "dropdown",
				previewer = false,
			},
		},
	})
end

return {
	"nvim-telescope/telescope.nvim",
	branch = "0.1.x",
	lazy = false,
	dependencies = {
		"nvim-lua/plenary.nvim",
		{ "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
		"nvim-tree/nvim-web-devicons",
	},
	config = config,
}
