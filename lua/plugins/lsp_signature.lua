return {
    'ray-x/lsp_signature.nvim',
    event = 'VeryLazy',
    config = function()
        require('lsp_signature').on_attach({
            bind = true,
            floating_window = true,
            transpancy = 80,
            handler_opts = {
                border = 'rounded'
            }
        })
    end
}
