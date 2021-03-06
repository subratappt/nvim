local cmp = require('cmp')
local luasnip = require('luasnip')
local lspkind = require('lspkind')
-- local nvim_lsp = require('plugins.lsp')

local t = function(str)
    return vim.api.nvim_replace_termcodes(str, true, true, true)
end
local check_back_space = function()
    local col = vim.fn.col '.' - 1
    return col == 0 or vim.fn.getline('.'):sub(col, col):match '%s' ~= nil
end

-- Set completeopt to have a better completion experience
vim.o.completeopt = 'menuone,noselect'

-- luasnip setup
-- local luasnip = require 'luasnip'

-- nvim-cmp setup
local cmp = require 'cmp'
cmp.setup {
    snippet = {
        expand = function(args)
            require('luasnip').lsp_expand(args.body)
        end
    },
    mapping = {
        ['<C-p>'] = cmp.mapping.select_prev_item(),
        ['<C-n>'] = cmp.mapping.select_next_item(),
        ['<C-d>'] = cmp.mapping.scroll_docs(-4),
        ['<C-f>'] = cmp.mapping.scroll_docs(4),
        ['<C-Space>'] = cmp.mapping.complete(),
        ['<C-e>'] = cmp.mapping.close(),
        ['<CR>'] = cmp.mapping.confirm {
            behavior = cmp.ConfirmBehavior.Replace,
            select = true
        },
        ['<Tab>'] = function(fallback)
            if vim.fn.pumvisible() == 1 then
                vim.fn.feedkeys(vim.api.nvim_replace_termcodes('<C-n>', true, true, true), 'n')
            elseif luasnip.expand_or_jumpable() then
                vim.fn.feedkeys(vim.api.nvim_replace_termcodes('<Plug>luasnip-expand-or-jump', true, true, true), '')
            else
                fallback()
            end
        end,
        ['<S-Tab>'] = function(fallback)
            if vim.fn.pumvisible() == 1 then
                vim.fn.feedkeys(vim.api.nvim_replace_termcodes('<C-p>', true, true, true), 'n')
            elseif luasnip.jumpable(-1) then
                vim.fn.feedkeys(vim.api.nvim_replace_termcodes('<Plug>luasnip-jump-prev', true, true, true), '')
            else
                fallback()
            end
        end
    },
    sources = {
        {name = 'path'},
        {name = 'buffer'},
        {name = 'vsnip'},
        {name = 'luasnip'},
        {name = 'nvim_lsp'},
        {name = 'calc'}
    },
    --formating
    formatting = {
        format = function(entry, vim_item)
            -- fancy icons and a name of kind
            vim_item.kind = require('lspkind').presets.default[vim_item.kind] .. ' ' .. vim_item.kind
            -- set a name for each source
            vim_item.menu =
                ({
                buffer = '[Buffer]',
                nvim_lsp = '[LSP]',
                luasnip = '[LuaSnip]',
                nvim_lua = '[Lua]',
                latex_symbols = '[Latex]',
                vsnip = '[VSnip]'
            })[entry.source.name]
            return vim_item
        end
    }
}
