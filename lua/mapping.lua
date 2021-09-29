function Map(mode, lhs, rhs, opts)
    local options = {noremap = true, silent = true}
    if opts then
        options = vim.tbl_extend('force', options, opts)
    end
    local stat, error = pcall(vim.api.nvim_set_keymap, mode, lhs, rhs, options)
    if not stat then
        print(error)
    end
end

Map('', 'K', '5k')
Map('', 'J', '5j')
Map('', 'L', '$')
Map('', 'H', '0')
Map('', 'X', 'Vx')
Map('', 'W', '5w')
Map('', 'B', '5b')
Map('', 'vw', 'viw')
Map('', '<C-z>', 'u')
Map('n', '<', '<<')
Map('n', '>', '>>')
Map('n', ';', ':')

vim.g.mapleader = ' '

Map('t', '<ESC>', '<C-\\><C-n>')

Map('n', ';w', ':w<CR>')

Map('n', '<LEADER>q', ':wq<CR>')

Map('n', '<C-A-q>', ':qa<CR>')

Map('v', '<LEADER>y', [["+y]])

Map('', '<LEADER>p', [["+p]])

Map('n', '<ESC>', ':nohlsearch<CR>')

Map('i', 'jj', '<ESC>')

Map('n', '<leader><up>', ':res +5<CR>')
Map('n', '<leader><down>', ':res -5<CR>')
Map('n', '<leader><left>', ':vertical resize-5<CR>')
Map('n', '<leader><right>', ':vertical resize+5<CR>')

-- Map("n", "sk",        "<C-w>k")
-- Map("n", "sj",        "<C-w>j")
-- Map("n", "sh",        "<C-w>h")
-- Map("n", "sl",        "<C-w>l")

-- --center line
-- Map("i", "<C-c>",     "<ESC>zzi")


-- --telescope
Map('n', '<leader>ff', [[<cmd>Telescope find_files<cr>]])
-- Map('n', '<leader>fp', [[<cmd>Telescope media_files<cr>]])
Map('n', '<leader>fg', [[<cmd>Telescope live_grep<cr>]])
Map('n', '<leader>fb', [[<cmd>Telescope file_browser<cr>]])
-- Map('n', '<leader>fh', [[<cmd>Telescope help_tags<cr>]])

Map("n", "tt", ":NvimTreeToggle<CR>")
Map("n", "tr", ":NvimTreeRefresh<CR>")

