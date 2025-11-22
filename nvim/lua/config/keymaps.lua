-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua

-- basic ones
vim.keymap.set("i", "jj", "<Esc>")

-- pasting better
vim.keymap.set("x", "<leader>p", '"_dP')
