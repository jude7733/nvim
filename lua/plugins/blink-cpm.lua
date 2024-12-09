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
			["<C-1>"] = {
				function(cmp)
					cmp.accept({ index = 1 })
				end,
			},
			["<C-2>"] = {
				function(cmp)
					cmp.accept({ index = 2 })
				end,
			},
			["<C-3>"] = {
				function(cmp)
					cmp.accept({ index = 3 })
				end,
			},
			["<C-4>"] = {
				function(cmp)
					cmp.accept({ index = 4 })
				end,
			},
			["<C-5>"] = {
				function(cmp)
					cmp.accept({ index = 5 })
				end,
			},
			["<C-6>"] = {
				function(cmp)
					cmp.accept({ index = 6 })
				end,
			},
			["<C-7>"] = {
				function(cmp)
					cmp.accept({ index = 7 })
				end,
			},
			["<C-8>"] = {
				function(cmp)
					cmp.accept({ index = 8 })
				end,
			},
			["<C-9>"] = {
				function(cmp)
					cmp.accept({ index = 9 })
				end,
			},
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
