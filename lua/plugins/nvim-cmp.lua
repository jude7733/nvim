return {
	"hrsh7th/nvim-cmp",
	config = function()
		require("cmp").setup({
			completion = {
				autocomplete = false,
			},
		})
	end,
}
