return {
	"rmagatti/auto-session",
	lazy = false,
	dependencies = {
		"nvim-telescope/telescope.nvim",
	},
	config = function()
		require("auto-session").setup({
			suppressed_dirs = { "~/", "~/Downloads", "~/Documents", "~/Desktop/" },
		})
	end,
}
