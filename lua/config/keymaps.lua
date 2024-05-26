local keymap = vim.keymap.set
local opts = { noremap = true, silent = true }

-- Exit insert mode
keymap("i", "jk", "<ESC>", opts)

-- inc/dec number
keymap("n", "<leader>+", "<C-a>", opts) --increment
keymap("n", "<leader>-", "<C-x>", opts) --decrement

-- Directory nav
keymap("n", "<leader>e", ":NvimTreeFocus<CR>", opts)
keymap("n", "<leader>f", ":NvimTreeToggle<CR>", opts)

-- Split nav
keymap("n", "<C-h>", "<C-w>h", opts) --nav left
keymap("n", "<C-j>", "<C-w>j", opts) --nav down
keymap("n", "<C-k>", "<C-w>k", opts) --nav up
keymap("n", "<C-l>", "<C-w>l", opts) --nav right

-- Win manage
keymap("n", "<leader>sv", ":vsplit<CR>", opts) --split vertical
keymap("n", "<leader>sh", ":split<CR>", opts) --split horizontal
keymap("n", "<leader>sx", "<cmd>close<CR>", opts) --Close split

-- Comments
vim.api.nvim_set_keymap("n", "<C-_>", "gcc", { noremap = false })
vim.api.nvim_set_keymap("v", "<C-_>", "gcc", { noremap = false })

-- Indenting
keymap("v", "<", "<gv") -- Shift Indentation to Left
keymap("v", ">", ">gv") -- Shift Indentation to Right
