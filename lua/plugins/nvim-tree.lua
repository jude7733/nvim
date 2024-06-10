return {
	"nvim-tree/nvim-tree.lua",
	dependencies = "nvim-tree/nvim-web-devicons",
	lazy = false,
	config = function()
		vim.g.loaded_netrw = 1
		vim.g.loaded_netrwPlugin = 1

		require("nvim-tree").setup({
			view = {
				width = 28,
			},
			-- change folder arrow icons
			renderer = {
				indent_markers = {
					enable = true,
				},
				icons = {
					glyphs = {
						folder = {
							arrow_closed = "", -- arrow when folder is closed
							arrow_open = "", -- arrow when folder is open
						},
					},
				},
			},
			actions = {
				open_file = {
					quit_on_open = true,
					window_picker = {
						enable = false,
					},
				},
			},
			git = {
				ignore = false,
			},
			filters = {
				dotfiles = false,
				custom = { ".DS_Store" },
			},
		})
	end,
}
