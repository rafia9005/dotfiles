return {
  {
    "stevearc/conform.nvim",
    event = "BufWritePre",
    config = function()
      require "configs.conform"
    end,
  },
  {
    "IogaMaster/neocord",
    event = "BufEnter",
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
        "lua-language-server",
        "stylua",
        "html-lsp",
        "css-lsp",
        "prettier",
        "gopls",
      },
    },
  },
  {
    "kyazdani42/nvim-tree.lua",
    config = function()
      require("nvim-tree").setup {
        view = {
          side = "right", -- Set the explorer to the right side
          width = 30,
        },
        renderer = {
          highlight_opened_files = "name",
        },
        hijack_netrw = true,
      }
    end,
  },
  {
    "nyoom-engineering/oxocarbon.nvim",
  },
}
