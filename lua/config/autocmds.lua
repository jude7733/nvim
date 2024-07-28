vim.api.nvim_create_user_command("Browse", function(opts)
	vim.fn.system({ "xdg-open", opts.fargs[1] })
end, { nargs = 1 })

-- Highlighting when yanking text
vim.api.nvim_create_autocmd("TextYankPost", {
	desc = "Highlight yanked text",
	pattern = "*",
	callback = function()
		vim.highlight.on_yank({ higroup = "IncSearch", timeout = 250 })
	end,
})

-- Auto save when lost focus
vim.api.nvim_create_augroup("auto_save", { clear = true })
vim.api.nvim_create_autocmd("FocusLost", {
	group = "auto_save",
	pattern = "*",
	command = "silent! wa",
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
