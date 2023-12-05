return {
    'akinsho/toggleterm.nvim',
    version = "*",
    config = true,
    opts = {
        on_open = function(term)
            vim.cmd('startinsert!')
        end,
        auto_chdir = true,
        direction = 'float', -- 'vertical' | 'horizontal' | 'window' | 'float',
        float_opts = {
            border = 'curved',
            width = math.floor(vim.o.columns * 0.7),
            height = math.floor(vim.o.lines * 0.6)
        }
    }

}
