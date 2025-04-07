require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map( {"i", "n"}, "jk", "<ESC>")
map("t", "jk", "<C-\\><C-N>")

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
map("n", "<leader>gd", "<cmd>Telescope lsp_definitions<CR>")
map("n", "<leader>gr", "<cmd>Telescope lsp_references<CR>")

map("n", "<leader>te", "<cmd>tabe<CR>")
map("n", "<leader>tn", "<cmd>tabn<CR>")
map("n", "<leader>tp", "<cmd>tabp<CR>")
map("n", "<leader>tx", "<cmd>tabc<CR>")
