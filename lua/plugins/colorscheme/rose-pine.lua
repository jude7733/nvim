return {
	"rose-pine/neovim",
	name = "rose-pine",
	priority = 999,
	config = function()
		vim.cmd("colorscheme rose-pine")
		vim.cmd("highlight Normal guibg=NONE")
	end,
}
