require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map( {"i", "n"}, "jk", "<ESC>")
map("t", "jk", "<C-\\><C-N>")

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
map("n", "<leader>gd", "<cmd>Telescope lsp_definitions<CR>", { desc = "Telescope go to definition" })
map("n", "<leader>gr", "<cmd>Telescope lsp_references<CR>", { desc = "Telescopte find references" })

map("n", "<leader>te", "<cmd>tabe<CR>", { desc = "new tab" })
map("n", "<leader>tn", "<cmd>tabn<CR>", { desc = "next tab" })
map("n", "<leader>tp", "<cmd>tabp<CR>", { desc = "previous tab" })
map("n", "<leader>tx", "<cmd>tabc<CR>", { desc = "close tab" })

-- map for auto running gdm-gproxy
map( "n" , "<leader>gp", function()
    require("nvchad.term").toggle { pos = "float", id = "floatTerm" }
    vim.fn.feedkeys("gulp --gdm-gproxy\r", "i")
end, { desc = "terminal toggle floating term" })
