return {
	"nvim-tree/nvim-tree.lua",
	dependencies = "nvim-tree/nvim-web-devicons",
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
			-- disable window_picker explorer to work well window splits
			actions = {
				open_file = {
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
		vim.api.nvim_create_autocmd({ "BufEnter" }, {
			pattern = "NvimTree*",
			callback = function()
				local view = require("nvim-tree.view")
				local is_visible = view.is_visible()

				local api = require("nvim-tree.api")
				if not is_visible then
					api.tree.open()
				end
			end,
		})
	end,
}
