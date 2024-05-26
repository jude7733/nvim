local mapkey = require("util.keymapper").mapkey

local config = function()
	local telescope = require("telescope")
  local actions = require("telescope.actions")

	telescope.setup({
		defaults = {
      path_display = { "smart" },
      mappings = {
        i = {
          ["<C-k>"] = actions.move_selection_previous, -- move to prev result
          ["<C-j>"] = actions.move_selection_next, -- move to next result
          -- ["<C-q>"] = actions.send_selected_to_qflist + actions.open_qflist,
        },
      },
	  },
		pickers = {
			find_files = {
				theme = "dropdown",
				previewer = false,
				hidden = true,
			},
			-- live_grep = {
			-- 	theme = "dropdown",
			-- 	previewer = false,
			-- },
			buffers = {
				theme = "dropdown",
				previewer = false,
			},
		},
	})
end

return {
	"nvim-telescope/telescope.nvim",
  branch = "0.1.x",
	lazy = false,
  dependencies = {
    "nvim-lua/plenary.nvim",
    { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
    "nvim-tree/nvim-web-devicons",
  },
	config = config,
	keys = {
		mapkey("<leader>fk", "Telescope keymaps", "n"),
		mapkey("<leader>fh", "Telescope help_tags", "n"),
    mapkey("<leader>fr", "Telescope oldfiles", "n"),
		mapkey("<leader>ff", "Telescope find_files", "n"),
		mapkey("<leader>fg", "Telescope live_grep", "n"),
		mapkey("<leader>fb", "Telescope buffers", "n"),
	},
}
