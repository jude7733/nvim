return {
	"rose-pine/neovim",
	name = "rose-pine",
	priority = 999,
	config = function()
		require("rose-pine").setup({
			styles = {
				transparency = true,
			},
		})
		vim.cmd("colorscheme rose-pine")
	end,
}
