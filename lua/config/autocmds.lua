local autocmd = vim.api.nvim_create_autocmd

vim.api.nvim_create_user_command("Browse", function(opts)
	vim.fn.system({ "xdg-open", opts.fargs[1] })
end, { nargs = 1 })

autocmd("TextYankPost", {
	desc = "Highlight yanked text",
	pattern = "*",
	callback = function()
		vim.highlight.on_yank({ higroup = "IncSearch", timeout = 700 })
	end,
})

-- vim.api.nvim_create_augroup("auto_save", { clear = true })
-- autocmd("FocusLost", {
-- 	group = "auto_save",
-- 	pattern = "*",
-- 	command = "silent! wa",
-- 	desc = "Auto save when focus is lost",
-- })

-- vim.b.miniindentscope_disable = true
-- autocmd("TermOpen", {
-- 	desc = "Disable 'mini.indentscope' in terminal buffer",
-- 	callback = function(data)
-- 		vim.b[data.buf].miniindentscope_disable = true
-- 	end,
-- })

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

vim.api.nvim_create_autocmd("LspAttach", {
	group = vim.api.nvim_create_augroup("lsp_attach_disable_ruff_hover", { clear = true }),
	callback = function(args)
		local client = vim.lsp.get_client_by_id(args.data.client_id)
		if client == nil then
			return
		end
		if client.name == "ruff" then
			-- Disable hover in favor of Pyright
			client.server_capabilities.hoverProvider = false
		end
	end,
	desc = "LSP: Disable hover capability from Ruff",
})

---@type table<number, {token:lsp.ProgressToken, msg:string, done:boolean}[]>
local progress = vim.defaulttable()
vim.api.nvim_create_autocmd("LspProgress", {
	---@param ev {data: {client_id: integer, params: lsp.ProgressParams}}
	callback = function(ev)
		local client = vim.lsp.get_client_by_id(ev.data.client_id)
		local value = ev.data.params.value --[[@as {percentage?: number, title?: string, message?: string, kind: "begin" | "report" | "end"}]]
		if not client or type(value) ~= "table" then
			return
		end
		local p = progress[client.id]

		for i = 1, #p + 1 do
			if i == #p + 1 or p[i].token == ev.data.params.token then
				p[i] = {
					token = ev.data.params.token,
					msg = ("[%3d%%] %s%s"):format(
						value.kind == "end" and 100 or value.percentage or 100,
						value.title or "",
						value.message and (" **%s**"):format(value.message) or ""
					),
					done = value.kind == "end",
				}
				break
			end
		end

		local msg = {} ---@type string[]
		progress[client.id] = vim.tbl_filter(function(v)
			return table.insert(msg, v.msg) or not v.done
		end, p)

		local spinner = { "⠋", "⠙", "⠹", "⠸", "⠼", "⠴", "⠦", "⠧", "⠇", "⠏" }
		vim.notify(table.concat(msg, "\n"), "info", {
			id = "lsp_progress",
			title = client.name,
			opts = function(notif)
				notif.icon = #progress[client.id] == 0 and " "
					or spinner[math.floor(vim.uv.hrtime() / (1e6 * 80)) % #spinner + 1]
			end,
		})
	end,
})

vim.api.nvim_create_autocmd("User", {
	pattern = "BlinkCmpCompletionMenuOpen",
	callback = function()
		require("copilot.suggestion").dismiss()
		vim.b.copilot_suggestion_hidden = true
	end,
})

vim.api.nvim_create_autocmd("User", {
	pattern = "BlinkCmpCompletionMenuClose",
	callback = function()
		vim.b.copilot_suggestion_hidden = false
	end,
})
