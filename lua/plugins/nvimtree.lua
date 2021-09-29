local opts = {silent = true, noremap = true}
vim.api.nvim_set_keymap('n', '<C-n>', '<Cmd>NvimTreeToggle<CR>', opts)
vim.api.nvim_set_keymap('n', '<leader>r', '<Cmd>NvimTreeRefresh<CR>', opts)

local ok, tree_c = pcall(require, 'nvim-tree.config')
if not ok then
    print(tree_c)
    return
end

local tree_cb = tree_c.nvim_tree_callback

vim.g.nvim_tree_side = 'left'
vim.g.nvim_tree_width = 25
vim.g.nvim_tree_ignore = {'.git', 'node_modules', '.cache'}
-- vim.g.nvim_tree_gitignore = 0
-- vim.g.nvim_tree_auto_ignore_ft = {"startify","dashboard"} -- don't open tree on specific fiypes.
-- vim.g.nvim_tree_auto_open = 0
-- vim.g.nvim_tree_auto_close = 1 -- closes tree when it's the last window
-- vim.g.nvim_tree_quit_on_open = 0 -- closes tree when file's opened
-- vim.g.nvim_tree_follow = 1
-- vim.g.nvim_tree_indent_markers = 0
vim.g.nvim_tree_hide_dotfiles = 1
-- vim.g.nvim_tree_git_hl = 0
-- vim.g.nvim_tree_highlight_opened_files = 1
-- vim.g.nvim_tree_root_folder_modifier = ":t"
-- vim.g.nvim_tree_tab_open = 1
-- vim.g.nvim_tree_allow_resize = 1
-- vim.g.nvim_tree_add_trailing = 0 -- append a trailing slash to folder names
-- vim.g.nvim_tree_disable_netrw = 1
-- vim.g.nvim_tree_hijack_netrw = 1
-- vim.g.nvim_tree_update_cwd = 1
-- vim.g.nvim_tree_disable_default_keybindings = 1

vim.g.nvim_tree_show_icons = {
    git = 1,
    folders = 1,
    files = 1
    -- folder_arrows= 1
}
vim.g.nvim_tree_icons = {
    default = '',
    symlink = '',
    folder = {
        -- arrow_open = "",
        -- arrow_closed = "",
        default = '',
        open = '',
        empty = '', -- 
        empty_open = '',
        symlink = '',
        symlink_open = ''
    }
}

-- toggle nvim tree
vim.cmd [[au BufEnter,BufWinEnter,WinEnter,CmdwinEnter * if bufname('%') == "NvimTree" | set laststatus=0 | else | set laststatus=2 | endif]]
