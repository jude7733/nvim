return {
	"rcarriga/nvim-notify",
	config = function()
		require("notify").setup({
			stages = "fade",
			background_colour = "#000000",
			timeout = 2000,
			max_width = 40,
		})
		require("telescope").load_extension("notify")
	end,
}
