return {
	"rmagatti/auto-session",
	lazy = false,
	config = function()
		require("auto-session").setup({
			suppressed_dirs = { "~/", "~/Downloads", "~/Documents", "~/Desktop/" },
		})
	end,
}
