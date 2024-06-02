return {
	event = "VeryLazy",
	"folke/which-key.nvim",
	init = function()
		vim.o.timeout = true
		vim.o.timeoutlen = 500
	end,
	config = function()
		require("which-key").register({
			["<leader>"] = {
				f = { name = "find" },
				b = { name = "Buffers" },
				h = { name = "hunks" },
				x = { name = "trouble" },
				w = { name = "workspace" },
				e = { name = "tree" },
				l = { name = "LSP" },
				s = { name = "split" },
			},
		})
	end,
}
