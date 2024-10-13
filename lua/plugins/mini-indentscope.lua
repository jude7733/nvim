return {
	"echasnovski/mini.indentscope",
	version = "*",
	lazy = true,
	event = "BufReadPost",
	config = function()
		require("mini.indentscope").setup()
	end,
}
