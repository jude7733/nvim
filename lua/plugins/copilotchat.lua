return {
	"CopilotC-Nvim/CopilotChat.nvim",
	dependencies = {
		{ "zbirenbaum/copilot.lua" },
		{ "nvim-lua/plenary.nvim", branch = "master" },
	},
	build = "make tiktoken",
	opts = {
		clear_chat_on_new_prompt = false,
		mappings = {
			complete = {
				insert = "<M-l>",
			},
			reset = {
				normal = "<C-r>",
				insert = "<C-r>",
			},
		},
	},
}
