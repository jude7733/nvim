local keymap = vim.api.nvim_set_keymap

keymap("i", "jk", "<ESC>", { desc = "Exit insert mode" })

keymap("n", "ZZ", "<cmd>q!<cr>", { desc = "Exit without saving" })

keymap("n", "<leader>+", "<C-a>", { desc = "increment number" })
keymap("n", "<leader>-", "<C-x>", { desc = "decrement number" })

-- Split nav
keymap("n", "<C-h>", "<C-w>h", { desc = "nav left" })
keymap("n", "<C-j>", "<C-w>j", { desc = "nav down" })
keymap("n", "<C-k>", "<C-w>k", { desc = "nav up" })
keymap("n", "<C-l>", "<C-w>l", { desc = "nav right" })

-- Win manage
keymap("n", "<leader>sv", ":vsplit<CR>", { desc = "split vertical" })
keymap("n", "<leader>sh", ":split<CR>", { desc = "split horizontal" })
keymap("n", "<leader>sx", "<cmd>close<CR>", { desc = "close split" })

-- Auto session
keymap("n", "<leader>wr", "<cmd>SessionRestore<CR>", { desc = "Restore session" })
keymap("n", "<leader>ws", "<cmd>SessionSave<CR>", { desc = "Save session" })
keymap("n", "<leader>wa", "<cmd>SessionToggleAutoSave<CR>", { desc = "Toggle autosave" })
keymap("n", "<leader>wd", "<cmd>Autosession delete<CR>", { desc = "Delete autosave" })
keymap("n", "<leader>w/", "<cmd>Autosession search<CR>", { desc = "Search autosave" })

-- Comments
keymap("n", "<leader>c", "gcc", { desc = "comment line" })
keymap("v", "<leader>c", "gcc", { desc = "comment selected" })

-- Nvim DAP
keymap("n", "<Leader>dl", "<cmd>lua require'dap'.step_into()<CR>", { desc = "Debugger step into" })
keymap("n", "<Leader>dj", "<cmd>lua require'dap'.step_over()<CR>", { desc = "Debugger step over" })
keymap("n", "<Leader>dk", "<cmd>lua require'dap'.step_out()<CR>", { desc = "Debugger step out" })
keymap("n", "<Leader>dc", "<cmd>lua require'dap'.continue()<CR>", { desc = "Debugger continue" })
keymap("n", "<Leader>db", "<cmd>lua require'dap'.toggle_breakpoint()<CR>", { desc = "Debugger toggle breakpoint" })
keymap(
	"n",
	"<Leader>dd",
	"<cmd>lua require'dap'.set_breakpoint(vim.fn.input('Breakpoint condition: '))<CR>",
	{ desc = "Debugger set conditional breakpoint" }
)
keymap("n", "<Leader>de", "<cmd>lua require'dap'.terminate()<CR>", { desc = "Debugger reset" })
keymap("n", "<Leader>dr", "<cmd>lua require'dap'.run_last()<CR>", { desc = "Debugger run last" })

-- rustaceanvim
keymap("n", "<Leader>dt", "<cmd>lua vim.cmd('RustLsp testables')<CR>", { desc = "Debugger testables" })

-- Lspsaga
keymap("n", "<leader>lf", "<cmd>Lspsaga finder<CR>", { desc = "Finder window" })
keymap("n", "<leader>ld", "<cmd>Lspsaga goto_definition<CR>", { desc = "Preview definition" })
keymap("n", "<leader>lh", "<cmd>Lspsaga hover_doc<CR>", { desc = "Hover doc" })
keymap("n", "<leader>lr", "<cmd>Lspsaga rename<CR>", { desc = "Rename" })
keymap("n", "<leader>lc", "<cmd>Lspsaga code_action<CR>", { desc = "Code action" })
keymap("n", "<leader>lo", "<cmd>Lspsaga outline<CR>", { desc = "open Outline" })
keymap("n", "<leader>lt", "<cmd>Lspsaga term_toggle<CR>", { desc = "Toggle terminal" })
keymap("t", "<leader>lt", "<C-\\><C-n>:Lspsaga term_toggle<CR>", { desc = "Close terminal" })

-- Buffer control
keymap("n", "<S-L>", ":BufferLineCycleNext<CR>", { desc = "Next buffer" })
keymap("n", "<S-H>", ":BufferLineCyclePrev<CR>", { desc = "Previous buffer" })
keymap("n", "<leader>ko", "<cmd>BufferLineCloseOthers<CR>", { desc = "close others" })
keymap("n", "<leader>kh", "<cmd>BufferLineCloseLeft<CR>", { desc = "close left" })
keymap("n", "<leader>kl", "<cmd>BufferLineCloseRight<CR>", { desc = "close right" })
keymap("n", "<leader>kd", "<cmd>BufferLineSortByDirectory<CR>", { desc = "sort by directory" })
keymap("n", "<leader>kr", "<cmd>BufferLineSortByRelativeDirectory<CR>", { desc = "sort by relative directory" })

-- Copilot Chat
keymap("n", "<leader>gc", ":CopilotChatToggle<CR>", { desc = "CopilotChat Toggle" })

-- W3m browser
function OpenW3mWithUrl(split)
	split = split or ""
	local url = vim.fn.input("Search: ")
	vim.cmd("W3m" .. split .. " " .. url)
end
vim.keymap.set("n", "<leader>//", OpenW3mWithUrl, { desc = "Open w3m browser" })
vim.keymap.set("n", "<leader>/v", function()
	OpenW3mWithUrl("VSplit")
end, { desc = "vertical split" })
vim.keymap.set("n", "<leader>/h", function()
	OpenW3mWithUrl("Split")
end, { desc = "horizontal split" })

-- Snacks
-- all snacks keys are stored in lua/plugins/snacks.lua
