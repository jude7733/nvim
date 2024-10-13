return {
	"saghen/blink.cmp",
	event = "LspAttach",
	dependencies = "rafamadriz/friendly-snippets",
	version = "v0.*",
	opts = {
		{
			keymap = {
				hide = "<C-d>",
				accept = "<CR>",
				select_prev = { "<Up>", "<C-k>" },
				select_next = { "<Down>", "<C-j>" },
			},
			highlight = {
				use_nvim_cmp_as_default = true,
			},
			accept = { auto_brackets = { enabled = true } },
		},
	},
}
