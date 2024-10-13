return {
	"RRethy/vim-illuminate",
	lazy = true,
	event = "BufRead",
	config = function()
		require("illuminate").configure({})
	end,
}
