return {
  "williamboman/mason.nvim",
  opts = {
    ui = {
      icons = {
        package_installed = "✓",
        package_pending = "➜",
        package_uninstalled = "✗",
      },
    },
    ensure_installed = {
      "shellcheck",
      -- "graphql",
      "pyright",
      "prettier", -- prettier formatter
      "stylua", -- lua formatter
      "isort", -- python formatter
      "black", -- python formatter
      "eslint_d", -- js linter
      "debugpy",
      "flake8",
      "mypy",
      "ruff",
      "codelldb",
    },
  },
}
