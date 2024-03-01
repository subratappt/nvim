return {
    "akinsho/bufferline.nvim",
    dependencies = {
        "nvim-tree/nvim-web-devicons"
    },
    version = "*",
    config = function()
        require('bufferline').setup {
            options = {
                offsets = {
                    {
                        filetype = "NvimTree",
                        text = "",
                        padding = 0
                    }
                },
                numbers = "both",
                number_style = "superscript",
                mappings = true,
                modified_icon = '●',
                max_name_length = 18,
                max_prefix_length = 15,
                tab_size = 18,
                diagnostics = "nvim_lsp",
                show_buffer_close_icons = true,
                persist_buffer_sort = true,
                separator_style = "thin",
                enforce_regular_tabs = false,
                always_show_bufferline = true
            }
        }
    end,
    vim.api.nvim_set_keymap('n', '<Tab>', ':bnext<CR>', {
        noremap = true,
        silent = true
    }),
    vim.api.nvim_set_keymap('n', '<S-Tab>', ':bprevious<CR>', {
        noremap = true,
        silent = true
    }),
    vim.api.nvim_set_keymap('n', '<C-l>', ':wincmd l<CR>', {
        noremap = true,
        silent = true
    }),
    vim.api.nvim_set_keymap('n', '<C-h>', ':wincmd h<CR>', {
        noremap = true,
        silent = true
    })

}
