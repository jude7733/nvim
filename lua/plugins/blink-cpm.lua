return {
	"saghen/blink.cmp",
	event = "LspAttach",
	dependencies = "rafamadriz/friendly-snippets",
	version = "v0.*",
	opts = {
		keymap = {
			["<C-space>"] = { "show", "show_documentation", "hide_documentation" },
			["<C-h>"] = { "hide" },
			["<C-CR>"] = { "select_and_accept" },

			["<C-k>"] = { "select_prev", "fallback" },
			["<C-j>"] = { "select_next", "fallback" },

			["<C-u>"] = { "scroll_documentation_up", "fallback" },
			["<C-d>"] = { "scroll_documentation_down", "fallback" },

			["<Tab>"] = { "snippet_forward", "fallback" },
			["<S-Tab>"] = { "snippet_backward", "fallback" },
		},
		highlight = {
			use_nvim_cmp_as_default = true,
		},
		trigger = { signature_help = { enabled = true } },
		accept = { auto_brackets = { enabled = true } },
		documentation = {
			auto_show = true,
		},
	},
}
