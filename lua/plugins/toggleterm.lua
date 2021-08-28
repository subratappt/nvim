local present, toggleterm = pcall(require, 'toggleterm')
if not present then
    return
end

toggleterm.setup {
    size = function(term)
        if term.direction == 'horizontal' then
            return 15
        elseif term.direction == 'vertical' then
            return vim.o.columns * 0.4
        end
    end,
    open_mapping = [[<C-\>]],
    hide_numbers = true, -- hide the number column in toggleterm buffers
    shade_filetypes = {},
    shade_terminals = true,
    shading_factor = 3, -- the degree by which to darken to terminal colour, default: 1 for dark backgrounds, 3 for light
    start_in_insert = true,
    insert_mappings = true, -- whether or not the open mapping applies in insert mode
    persist_size = true,
    direction = 'float', -- 'vertical' | 'horizontal' | 'window' | 'float',
    close_on_exit = true, -- close the terminal window when the process exits
    shell = vim.o.shell, -- change the default shell
    --    This field is only relevant if direction is set to 'float'
    float_opts = {
        -- The border key is *almost* the same as 'nvim_open_win'
        -- see :h nvim_open_win for details on borders however
        -- the 'curved' border is a custom border type
        -- not natively supported but implemented in this plugin.
        border = 'curved',
         --'single' | 'double' | 'shadow' | 'curved', -- other options supported by win open
        width = math.floor(vim.o.columns * 0.75),
        height = math.floor(vim.o.lines * 0.6),
        winblend = 0,
        highlights = {
            border = 'EndOfBuffer',
            background = 'Normal'
        }
    }
}
