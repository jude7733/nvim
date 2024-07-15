return {
	-- event = "VeryLazy",
	"folke/which-key.nvim",
	init = function()
		vim.o.timeout = true
		vim.o.timeoutlen = 500
	end,
	config = function()
		require("which-key").add({
			{ "<leader>k", group = "close" },
			{ "<leader>e", group = "tree" },
			{ "<leader>f", group = "find" },
			{ "<leader>h", group = "hunks" },
			{ "<leader>l", group = "LSP" },
			{ "<leader>s", group = "split" },
			{ "<leader>w", group = "workspace" },
			{ "<leader>x", group = "trouble" },
			{ "<leader>c", group = "comment" },
			{ "<leader>/", group = "browse" },
		})
	end,
}
