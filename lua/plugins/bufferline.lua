return {
	"akinsho/bufferline.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	version = "*",
	opts = {
		options = {
			mode = "tabs",
			separator_style = "slant",
		},
	},
	config = function()
		local current_colorscheme = vim.g.colors_name
		--		if current_colorscheme == nil then
		-- current_colorscheme = "rose-pine"
		-- end
		require("bufferline").setup({
			highlights = require(current_colorscheme .. ".plugins.bufferline"),
		})
	end,
}
