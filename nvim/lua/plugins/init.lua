return {
  {
    "stevearc/conform.nvim",
    event = "BufWritePre", -- uncomment for format on save
    config = function()
      require "configs.conform"
    end,
  },
  -- Discord presence init
  {
    "IogaMaster/neocord",
    event = "BufEnter", -- Change event to appropriate one
    config = function()
      require "configs.discord"
    end,
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      require("nvchad.configs.lspconfig").defaults()
      require "configs.lspconfig"
    end,
  },
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "lua-language-server", -- Fixed typo here
        "stylua",
        "html-lsp",
        "css-lsp",
        "prettier",
        "gopls",
      },
    },
  },
}
