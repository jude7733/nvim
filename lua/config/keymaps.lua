local keymap = vim.api.nvim_set_keymap

-- Exit insert mode
keymap("i", "jk", "<ESC>", { desc = "Exit insert mode" })

-- inc/dec number
keymap("n", "<leader>+", "<C-a>", { desc = "increment number" })
keymap("n", "<leader>-", "<C-x>", { desc = "decrement number" })

-- nvim-tree
keymap("n", "<leader>ef", ":NvimTreeFocus<CR>", { desc = "Focus on file tree" })
keymap("n", "<leader>ee", "<cmd>NvimTreeToggle<CR>", { desc = "Toggle file explorer" })
keymap("n", "<leader>ec", "<cmd>NvimTreeCollapse<CR>", { desc = "Collapse file explorer" })

-- Telescope
keymap("n", "<leader>ff", "<cmd>Telescope find_files<cr>", { desc = "Fuzzy find files in cwd" })
keymap("n", "<leader>fr", "<cmd>Telescope oldfiles<cr>", { desc = "Fuzzy find recent files" })
keymap("n", "<leader>fg", "<cmd>Telescope live_grep<cr>", { desc = "Find string in cwd" })
keymap("n", "<leader>fk", "<cmd>Telescope keymaps<cr>", { desc = "Show Telescope keymaps" })
keymap("n", "<leader>fd", "<cmd>Telescope diagnostics<cr>", { desc = "Show diagnostics" })
keymap("n", "<leader>fc", "<cmd>Telescope colorscheme<cr>", { desc = "colorscheme" })
keymap("n", "<leader>fo", "<cmd>Telescope vim_options<cr>", { desc = "Vim Options" })
keymap("n", "<leader>ft", "<cmd>TodoTelescope<cr>", { desc = "Find todos" })
keymap("n", "<leader>fb", "<cmd>Telescope buffers<cr>", { desc = "Find Buffers" })
keymap("n", "<leader>fs", "<cmd>Telescope search_history<cr>", { desc = "Search history" })
keymap("n", "<leader>fn", "<cmd>Telescope notify<cr>", { desc = "Show notifications" })

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

-- Comments
keymap("n", "<leader>c", "gcc", { desc = "comment line" })
keymap("v", "<leader>c", "gcc", { desc = "comment selected" })

-- Lspsaga
keymap("n", "<leader>lf", "<cmd>Lspsaga finder<CR>", { desc = "Finder window" })
keymap("n", "<leader>ld", "<cmd>Lspsaga goto_definition<CR>", { desc = "Preview definition" })
keymap("n", "<leader>lh", "<cmd>Lspsaga hover_doc<CR>", { desc = "Hover doc" })
keymap("n", "<leader>lr", "<cmd>Lspsaga rename<CR>", { desc = "Rename" })
keymap("n", "<leader>lc", "<cmd>Lspsaga code_action<CR>", { desc = "Code action" })
keymap("n", "<leader>ls", "<cmd>Lspsaga signature_help<CR>", { desc = "Signature help" })
keymap("n", "<leader>lo", "<cmd>Lspsaga outline<CR>", { desc = "open Outline" })
keymap("n", "<leader>lt", "<cmd>Lspsaga term_toggle<CR>", { desc = "Toggle terminal" })
keymap("t", "<leader>lt", "<C-\\><C-n>:Lspsaga term_toggle<CR>", { desc = "Close terminal" })

-- Buffer control
keymap("n", "<S-L>", ":BufferLineCycleNext<CR>", { desc = "Next buffer" })
keymap("n", "<S-H>", ":BufferLineCyclePrev<CR>", { desc = "Previous buffer" })
keymap("n", "<leader>kk", "<cmd>close<CR>", { desc = "close current" })
keymap("n", "<leader>ko", "<cmd>BufferLineCloseOthers<CR>", { desc = "close others" })
keymap("n", "<leader>kh", "<cmd>BufferLineCloseLeft<CR>", { desc = "close left" })
keymap("n", "<leader>kl", "<cmd>BufferLineCloseRight<CR>", { desc = "close right" })
keymap("n", "<leader>kd", "<cmd>BufferLineSortByDirectory<CR>", { desc = "sort by directory" })
keymap("n", "<leader>kr", "<cmd>BufferLineSortByRelativeDirectory<CR>", { desc = "sort by relative directory" })

-- Toggleterm
keymap("n", "<leader>tt", "<cmd>ToggleTerm<CR>", { desc = "Toggle terminal" })
keymap("t", "<leader>tt", "<C-\\><C-n><cmd>ToggleTerm<CR>", { desc = "Close terminal" })
keymap("n", "<leader>tv", "<cmd>ToggleTerm direction=vertical size=40<CR>", { desc = "Toggle vertical terminal" })

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
