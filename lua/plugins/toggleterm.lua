return {
    'akinsho/toggleterm.nvim',
    version = "*",
    config = function()
        require("toggleterm").setup({
            size = 20,
            open_mapping = [[<c-\>]],
            hide_numbers = true,
            shade_filetypes = {},
            shade_terminals = true,
            shell = vim.o.shell,
            direction = "float",
            float_opts = {
                border = "curved",
                winblend = 3,
                width = 80,
                height = 15
            }
        })
    end

}
