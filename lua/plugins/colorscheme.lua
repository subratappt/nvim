local M = {
    -- "bluz71/vim-nightfly-guicolors",
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    config = function()
        require("catppuccin").setup({
            transparent_background = true
        })
        vim.cmd("colorscheme catppuccin") -- catppuccin-latte, catppuccin-frappe, catppuccin-macchiato, catppuccin-mocha
        -- vim.cmd(
        --     "highlight Normal guibg=NONE ctermbg=NONE | highlight LineNr guibg=NONE ctermbg=NONE | highlight CursorLineNr guibg=NONE ctermbg=NONE | highlight EndOfBuffer guibg=NONE ctermbg=NONE | highlight SignColumn guibg=NONE ctermbg=NONE")
    end
}

return M