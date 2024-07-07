local config = function()
	local current_colorscheme = vim.g.colors_name
	if current_colorscheme == nil then
		current_colorscheme = "rose-pine"
	end
	local lazy_status = require("lazy.status")

	require("lualine").setup({
		options = {
			theme = require("lualine.themes." .. current_colorscheme),
		},
		tabline = {},
		sections = {
			lualine_a = { "mode" },
			lualine_b = { "branch", "diff", "diagnostics" },
			lualine_x = {
				"encoding",
				"filetype",
				"fileformat",
				{
					"lazy_status.updates",
					cond = lazy_status.has_updates,
					color = { fg = "#ff9e64" },
				},
			},
			lualine_y = { "progress" },
			lualine_z = { "location" },
		},
	})
end

return {
	"nvim-lualine/lualine.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	config = config,
}
