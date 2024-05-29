local keymap = vim.keymap.set

-- Exit insert mode
keymap("i", "jk", "<ESC>", { desc = "Exit insert mode" })

-- inc/dec number
keymap("n", "<leader>+", "<C-a>", { desc = "Increment number" })
keymap("n", "<leader>-", "<C-x>", { desc = "decrement number" })

-- Directory nav
keymap("n", "<leader>ef", ":NvimTreeFocus<CR>", { desc = "Focus on file tree" })
keymap("n", "<leader>ee", "<cmd>NvimTreeToggle<CR>", { desc = "Toggle file explorer" })
keymap("n", "<leader>ec", "<cmd>NvimTreeCollapse<CR>", { desc = "Collapse file explorer" })

-- Telescope
keymap("n", "<leader>ff", "<cmd>Telescope find_files<cr>", { desc = "Fuzzy find files in cwd" })
keymap("n", "<leader>fr", "<cmd>Telescope oldfiles<cr>", { desc = "Fuzzy find recent files" })
keymap("n", "<leader>fg", "<cmd>Telescope live_grep<cr>", { desc = "Find string in cwd" })
keymap("n", "<leader>fk", "<cmd>Telescope keymaps<cr>", { desc = "Show Telescope keymaps" })
keymap("n", "<leader>fb", "<cmd>Telescope buffers<cr>", { desc = "Find Buffers" })

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
keymap("n", "<leader>wr", "<cmd>SessionRestore<CR>", { desc = "Restore session for cwd" })
keymap("n", "<leader>ws", "<cmd>SessionSave<CR>", { desc = "Save session for auto session root dir" })

-- Comments
vim.api.nvim_set_keymap("n", "<C-_>", "gcc", { desc = "comment line" })
vim.api.nvim_set_keymap("v", "<C-_>", "gcc", { desc = "comment selected" })

-- Indenting
keymap("v", "<", "<gv", { desc = "Shift Indentation to Left" })
keymap("v", ">", ">gv", { desc = "Shift Indentation Right" })
