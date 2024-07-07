return {
	{
		"folke/tokyonight.nvim",
		event = "VeryLazy",
		--		priority = 999,
		config = function()
			require("tokyonight").setup({
				style = "night",
				transparent = true,
				styles = {
					sidebars = "transparent",
					floats = "transparent",
				},
			})
		end,
	},
}
