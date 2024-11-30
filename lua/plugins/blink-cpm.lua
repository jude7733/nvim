return {
	"saghen/blink.cmp",
	dependencies = "rafamadriz/friendly-snippets",
	lazy = false,
	version = "v0.*",
	opts = {
		keymap = {
			preset = "enter",
			["<C-k>"] = { "select_prev", "fallback" },
			["<C-j>"] = { "select_next", "fallback" },
		},
		appearance = {
			use_nvim_cmp_as_default = true,
			nerd_font_variant = "mono",
		},
		sources = {
			completion = {
				enabled_providers = { "lsp", "path", "snippets", "buffer" },
			},
		},
		trigger = { signature_help = { enabled = true } },
		accept = { auto_brackets = { enabled = true } },
		opts_extend = { "sources.completion.enabled_providers" },
		documentation = {
			auto_show = true,
		},
	},
}
