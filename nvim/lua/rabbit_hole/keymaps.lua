vim.g.mapleader = " "

-- basic ones
vim.keymap.set("i", "jj", "<Esc>")

-- buffer keymaps
vim.keymap.set("n", "<leader>bn", ":bn<cr>")
vim.keymap.set("n", "<leader>bp", ":bp<cr>")
vim.keymap.set("n", "<leader>bd", ":bd<cr>")

-- pasting better 
vim.keymap.set("x", "<leader>p", "\"_dP")


