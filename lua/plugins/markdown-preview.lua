return {
	"iamcco/markdown-preview.nvim",
	cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
	lazy = true,
	ft = { "markdown" },
	build = function()
		vim.fn["mkdp#util#install"]()
	end,
}
