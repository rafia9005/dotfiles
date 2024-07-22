local options = {
  formatters_by_ft = {
    lua = { "stylua" },
    css = { "prettier" },
    html = { "prettier" },
    python = { "blue" },
    vue = { "prettier" },
    javascript = { "prettier" },
    typescript = { "prettier" },
    php = { "intelephense" },
    astro = { "prettier" },
    blade = { "blade-formatter" },
    golang = { "goimports" },
    cpp = { "clang-format" },
  },

  format_on_save = {
    -- These options will be passed to conform.format()
    timeout_ms = 500,
    lsp_fallback = true,
  },
}

require("conform").setup(options)
