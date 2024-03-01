-- set leader key
vim.g.mapleader = " "

local keymap = vim.keymap

-- General keymaps
keymap.set("i", "jj", "<Esc>", {
    desc = "jj to escape"
})
keymap.set("i", "jk", "<Esc>", {
    desc = "jk to escape"
})

-- file save and quit
keymap.set("n", "<leader>w", "<cmd>write<CR>", {
    desc = "Save file"
})
keymap.set("n", "<leader>q", "<cmd>quit<CR>", {
    desc = "Quit file"
})
keymap.set("n", "<leader>wq", "<cmd>write<CR><cmd>quit<CR>", {
    desc = "Save and quit file"
})

-- buffer navigation
keymap.set("n", "<leader>bn", "<cmd>BufferNext<CR>", {
    desc = "Next buffer"
})

keymap.set("n", "<leader>bp", "<cmd>BufferPrevious<CR>", {
    desc = "Previous buffer"
})

keymap.set("n", "<leader>bd", "<cmd>BufferClose<CR>", {
    desc = "Close buffer"
})

keymap.set('n', '<Tab>', ':bnext<CR>', {
    noremap = true,
    silent = true,
    desc = "Next buffer"
})

keymap.set('n', '<S-Tab>', ':bprevious<CR>', {
    noremap = true,
    silent = true,
    desc = "Previous buffer"
})

keymap.set('n', '<C-l>', ':wincmd l<CR>', {
    noremap = true,
    silent = true,
    desc = "Move to right window"
})

keymap.set('n', '<C-h>', ':wincmd h<CR>', {
    noremap = true,
    silent = true,
    desc = "Move to left window"
})
