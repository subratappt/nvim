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
