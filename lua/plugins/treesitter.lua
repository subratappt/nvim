require 'nvim-treesitter.configs'.setup {
    ensure_installed = {
        'cpp',
        'go',
        'json',
        'lua',
        'c',
        'fortran',
        'python'
    },
    highlight = {
        enable = true
    }
}
