require('nvim_comment').setup()
vim.cmd [[
    autocmd BufEnter *.c,*.cc,*.cpp,*.h :lua vim.api.nvim_buf_set_option(0, "commentstring", "// %s")
    autocmd BufFilePost *.c,*.cc,*.cpp,*.h :lua vim.api.nvim_buf_set_option(0, "commentstring", "// %s")
]]
