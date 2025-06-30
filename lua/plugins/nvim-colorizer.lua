return {
  "catgoose/nvim-colorizer.lua",
  event = "VeryLazy",
  opts = {
    lazy_load = true,
    user_default_options = {
      css = true,
      tailwind = true,
      tailwind_opts = {
        update_names = true,
      },
    },
  },
}
