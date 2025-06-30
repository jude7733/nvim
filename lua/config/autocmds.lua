local autocmd = vim.api.nvim_create_autocmd

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

local group = vim.api.nvim_create_augroup("OoO", {})

local function au(typ, pattern, cmdOrFn)
  if type(cmdOrFn) == "function" then
    vim.api.nvim_create_autocmd(typ, { pattern = pattern, callback = cmdOrFn, group = group })
  else
    vim.api.nvim_create_autocmd(typ, { pattern = pattern, command = cmdOrFn, group = group })
  end
end

au({ "CursorHold", "InsertLeave" }, nil, function()
  local opts = {
    focusable = false,
    scope = "cursor",
    close_events = { "BufLeave", "CursorMoved", "InsertEnter" },
  }
  vim.diagnostic.open_float(nil, opts)
end)

au("InsertEnter", nil, function()
  vim.diagnostic.enable(false)
end)

au("InsertLeave", nil, function()
  vim.diagnostic.enable(true)
end)
