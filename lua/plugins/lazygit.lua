----use fterm to open the lazygit
--local term = require("FTerm.terminal")
--local lazygit = term:new():setup({
--    cmd = "lazygit",
--    dimensions = {
--        height = 0.9,
--        width = 0.9
--    }
--})
--function _G.fterm_lazygit()
--    lazygit:toggle()
--end

--vim.api.nvim_set_keymap('n', '<C-g>', ':lua _G.fterm_lazygit()<CR>', {noremap=true, silent=true})
--

-- Term sample 1

local Terminal = require('toggleterm.terminal').Terminal
-- local lazygit = Terminal:new({ cmd = "lazygit", hidden = true })

-- function _lazygit_toggle()
--   lazygit:toggle()
-- end

-- vim.api.nvim_set_keymap("n", "<leader>g", "<cmd>lua _lazygit_toggle()<CR>", {noremap = true, silent = true})

local lazygit =
    Terminal:new(
    {
        cmd = 'lazygit',
        dir = 'git_dir',
        direction = 'float',
        float_opts = {
            border = 'double'
        },
        -- function to run on opening the terminal
        on_open = function(term)
            vim.cmd('startinsert!')
            vim.api.nvim_buf_set_keymap(term.bufnr, 'n', 'q', '<cmd>close<CR>', {noremap = true, silent = true})
        end,
        -- function to run on closing the terminal
        -- on_close = function(term)
        --     vim.cmd('Closing terminal')
        -- end
    }
)

function _lazygit_toggle()
    lazygit:toggle()
end

vim.api.nvim_set_keymap('n', '<leader>g', '<cmd>lua _lazygit_toggle()<CR>', {noremap = true, silent = true})
