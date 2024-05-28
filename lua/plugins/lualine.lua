local config = function()
  local theme = require("lualine.themes.kanagawa")
  local lazy_status = require("lazy.status")

  require("lualine").setup({
    options = {
      theme = theme,
    },
    tabline = {},
    sections = {
      lualine_a = { "mode" },
      lualine_b = { 'branch', 'diff', 'diagnostics' },
      lualine_x = {
        "encoding",
        "filetype",
        "fileformat",
        {
          "lazy_status.updates",
          cond = lazy_status.has_updates,
          color = { fg = "#ff9e64" },
        },
      },
      lualine_y = { "progress" },
      lualine_z = { "location" },
    }
  })
end

return {
  "nvim-lualine/lualine.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  lazy = false,
  config = config,
}
