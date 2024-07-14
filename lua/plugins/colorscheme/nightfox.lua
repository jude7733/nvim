return {
	"EdenEast/nightfox.nvim",
	event = "VeryLazy",
	config = function()
		require("nightfox").setup({
			options = {
				tranparent = true,
			},
		})
		-- vim.cmd('colorscheme nightfox')
	end,
}
