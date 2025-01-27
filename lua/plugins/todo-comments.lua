return {
	event = { "BufReadPre", "BufNewFile" },
	"folke/todo-comments.nvim",
	dependencies = { "nvim-lua/plenary.nvim" },
	keys = {
		{
			"<leader>ft",
			function()
				Snacks.picker.todo_comments()
			end,
			desc = "Todo",
		},
		{
			"<leader>fT",
			function()
				Snacks.picker.todo_comments({ keywords = { "TODO", "FIX", "FIXME", "NOTE" } })
			end,
			desc = "Todo/Fix/Fixme",
		},
	},
}
