return {
	"0xstepit/flow.nvim",
	opts = {},
	config = function()
		require("flow").setup({
			dark_theme = true, -- Set the theme with dark background.
			high_contrast = false, -- Make the dark background darker or the light background lighter.
			transparent = true, -- Set transparent background.
			fluo_color = "pink", -- Color used as fluo. Available values are pink, yellow, orange, or green.
			mode = "desaturate", -- Mode of the colors. Available values are: dark, bright, desaturate, or base.
			aggressive_spell = true, -- Use colors for spell check.
		})
	end,
}
