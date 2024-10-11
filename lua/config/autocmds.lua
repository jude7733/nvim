local autocmd = vim.api.nvim_create_autocmd

vim.api.nvim_create_user_command("Browse", function(opts)
	vim.fn.system({ "xdg-open", opts.fargs[1] })
end, { nargs = 1 })

autocmd("TextYankPost", {
	desc = "Highlight yanked text",
	pattern = "*",
	callback = function()
		vim.highlight.on_yank({ higroup = "IncSearch", timeout = 250 })
	end,
})

vim.api.nvim_create_augroup("auto_save", { clear = true })
autocmd("FocusLost", {
	group = "auto_save",
	pattern = "*",
	command = "silent! wa",
	desc = "Auto save when focus is lost",
})

vim.b.miniindentscope_disable = true
autocmd("TermOpen", {
	desc = "Disable 'mini.indentscope' in terminal buffer",
	callback = function(data)
		vim.b[data.buf].miniindentscope_disable = true
	end,
})

-- Language specific settings
-- vim.api.nvim_create_augroup("python_settings", { clear = true })
--
-- vim.api.nvim_create_autocmd("FileType", {
--   group = "python_settings",
--   pattern = "python",
--   command = "setlocal expandtab shiftwidth=4 softtabstop=4"
-- })

-- -- Terminal opens in insert mode
-- vim.api.nvim_create_augroup("terminal_settings", { clear = true })
-- vim.api.nvim_create_autocmd("TermOpen", {
-- 	group = "terminal_settings",
-- 	pattern = "*",
-- 	command = "startinsert",
-- })
