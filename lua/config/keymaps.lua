local keymap = vim.api.nvim_set_keymap

keymap("i", "jk", "<ESC>", { desc = "Exit insert mode" })

keymap("n", "<leader>+", "<C-a>", { desc = "increment number" })
keymap("n", "<leader>-", "<C-x>", { desc = "decrement number" })

-- Split nav
keymap("n", "<C-h>", "<C-w>h", { desc = "nav left" })
keymap("n", "<C-j>", "<C-w>j", { desc = "nav down" })
keymap("n", "<C-k>", "<C-w>k", { desc = "nav up" })
keymap("n", "<C-l>", "<C-w>l", { desc = "nav right" })

-- Buffer control
keymap("n", "<S-L>", ":BufferLineCycleNext<CR>", { desc = "Next buffer" })
keymap("n", "<S-H>", ":BufferLineCyclePrev<CR>", { desc = "Previous buffer" })
keymap("n", "<leader>ko", "<cmd>BufferLineCloseOthers<CR>", { desc = "close others" })
keymap("n", "<leader>kh", "<cmd>BufferLineCloseLeft<CR>", { desc = "close left" })
keymap("n", "<leader>kl", "<cmd>BufferLineCloseRight<CR>", { desc = "close right" })
keymap("n", "<leader>kd", "<cmd>BufferLineSortByDirectory<CR>", { desc = "sort by directory" })
keymap("n", "<leader>kr", "<cmd>BufferLineSortByRelativeDirectory<CR>", { desc = "sort by relative directory" })
