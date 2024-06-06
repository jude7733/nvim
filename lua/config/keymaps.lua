local keymap = vim.api.nvim_set_keymap

-- Exit insert mode
keymap("i", "jk", "<ESC>", { desc = "Exit insert mode" })

-- inc/dec number
keymap("n", "<leader>+", "<C-a>", { desc = "Increment number" })
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
keymap("n", "<leader>b", "<cmd>Telescope buffers<cr>", { desc = "Find Buffers" })

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
keymap("n", "<C-_>", "gcc", { desc = "comment line" })
keymap("v", "<C-_>", "gcc", { desc = "comment selected" })

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
