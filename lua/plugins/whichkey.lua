return {
	event = "VeryLazy",
	"folke/which-key.nvim",
	init = function()
		vim.o.timeout = true
		vim.o.timeoutlen = 500
	end,
	opts = {
		triggers = { "<leader>", mode = { "n", "v" } },
	},
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
			{ "<leader>b", group = "buffer" },
			{ "<leader>t", group = "toggle" },
			{ "<leader>g", group = "git" },
		})
	end,
	keys = {
		{
			"<leader>?",
			function()
				require("which-key").show({ global = false })
			end,
			desc = "Buffer Local Keymaps (which-key)",
		},
	},
}
