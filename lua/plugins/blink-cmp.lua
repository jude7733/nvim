return {
  "saghen/blink.cmp",
  ---@module 'blink.cmp'
  ---@type blink.cmp.Config
  opts = {
    keymap = {
      preset = "enter",
      ["<C-k>"] = { "select_prev", "fallback" },
      ["<C-j>"] = { "select_next", "fallback" },
    },
    completion = {
      list = { selection = { preselect = false, auto_insert = false } },
      menu = {
        auto_show = true,
        border = "rounded",
      },
      trigger = { show_on_keyword = true },
    },
    signature = { enabled = true },
  },
}
