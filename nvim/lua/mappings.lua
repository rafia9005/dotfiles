require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")
-- Mapping untuk menjalankan perintah Prettier
vim.api.nvim_set_keymap("n", "<Leader>f", "<Plug>(prettier-format)", { silent = true })

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
