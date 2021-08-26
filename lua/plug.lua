require('packer').init {
    display = {
        open_fn = function()
            return require('packer.util').float {border = 'single'}
        end
    },
    git = {
        clone_timeout = 60 -- Timeout, in seconds, for git clones
    }
}

return require('packer').startup(
    function(use)
        -- Packer can manage itself
        use {
            'wbthomason/packer.nvim',
            event = 'VimEnter'
        }

        use {
            'lukas-reineke/indent-blankline.nvim',
            config = function()
                require('plugins.indent')
            end,
            event = 'BufEnter'
        }

        -- colorscheme
        use {
            'navarasu/onedark.nvim',
            config = function()
                require('onedark').setup()
            end
        }

        --telescope: extensible fuzzy file finder--
        use {
            'nvim-telescope/telescope.nvim',
            cmd = 'Telescope',
            requires = {
                {'nvim-lua/popup.nvim'},
                {'nvim-lua/plenary.nvim'}
            },
            config = function()
                require('plugins.telescope')
            end,
            after = 'telescope-media-files.nvim'
        }

        use {
            'nvim-telescope/telescope-media-files.nvim',
            cmd = 'Telescope'
        }

        --nvim-bufferline: better buffer line--
        use {
            'akinsho/nvim-bufferline.lua',
            config = function()
                require('plugins.bufferline')
            end
        }

        use {
            'kabouzeid/nvim-lspinstall',
            event = 'BufRead'
        }

        --nvim-lspconfig: built-in lsp--
        use {
            'neovim/nvim-lspconfig',
            config = function()
                require('plugins.lsp')
            end,
            after = 'nvim-lspinstall'
        }

        use {
            after = 'nvim-lspconfig',
            'ray-x/lsp_signature.nvim',
            config = function()
                require('plugins.lsp-signature')
            end
        }

        use {
            'onsails/lspkind-nvim',
            config = function()
                require('plugins.lspkind')
            end
        }

        use {
            'L3MON4D3/LuaSnip',
            config = function()
                require('plugins.luasnip')
            end
        }

        use {
            'rafamadriz/friendly-snippets',
            after = 'LuaSnip'
        }

        use {
            'hrsh7th/nvim-cmp',
            config = function()
                require('plugins.cmp')
            end
        }
        use {'hrsh7th/cmp-buffer'}
        use {'hrsh7th/cmp-nvim-lsp'}
        use {'saadparwaiz1/cmp_luasnip'}
        use {'hrsh7th/cmp-path'}
        use {'hrsh7th/cmp-calc'}
        use {'hrsh7th/cmp-vsnip'}
        use {'hrsh7th/vim-vsnip'}
        use {'hrsh7th/vim-vsnip-integ'}

        use {
            'glepnir/lspsaga.nvim',
            config = function()
                require('plugins.lspsaga')
            end
        }

        --nvim-tree.lua--
        use {
            'kyazdani42/nvim-tree.lua',
            config = function()
                require('plugins.nvimtree')
            end,
            -- cmd={"NvimTreeRefresh", "NvimTreeToggle"},
            requires = 'kyazdani42/nvim-web-devicons'
        }

        --TrueZen.nvim: zen mode in neovim--
        use {
            'Pocco81/TrueZen.nvim',
            cmd = {'TZAtaraxis', 'TZFocus', 'TZMinimalist'}
        }

        -- vim-commentary: for quickly commenting--
        use {
            'tpope/vim-commentary',
            keys = {{'n', 'gcc'}, {'v', 'gc'}}
        }

        --treesitter: support more colorful highlighting
        use {
            'nvim-treesitter/nvim-treesitter',
            run = ':TSUpdate',
            event = 'VimEnter',
            config = function()
                require('plugins.treesitter')
            end
        }

        use {
            'glepnir/galaxyline.nvim',
            branch = 'main',
            requires = {
                {'kyazdani42/nvim-web-devicons'}
            },
            config = function()
                require('plugins.galaxyline')
            end
        }

        --highlight all the word below the cursor
        use {
            'RRethy/vim-illuminate',
            event = 'BufRead'
        }

        --file navigation
        use {
            'mcchrish/nnn.vim',
            config = function()
                require('plugins.nnn')
            end,
            cmd = 'NnnPicker'
        }

        use {
            'airblade/vim-rooter',
            event = 'VimEnter',
            config = function()
                vim.g.rooter_patterns = {'.git', 'Cargo.toml'}
            end
        }

        use {
            'pechorin/any-jump.vim',
            config = function()
                vim.g.any_jump_window_width_ratio = 0.8
                vim.g.any_jump_window_height_ratio = 0.9
            end,
            cmd = {
                'AnyJump',
                'AnyJumpBack'
            }
        }

        --git information
        use {
            'lewis6991/gitsigns.nvim',
            requires = {
                'nvim-lua/plenary.nvim'
            },
            event = 'BufRead',
            config = function()
                require('plugins.gitsign')
            end
        }

        --surrounding select text with given text
        use {
            'tpope/vim-surround',
            event = 'BufRead'
        }

        --align
        use {
            'junegunn/vim-easy-align',
            cmd = 'EasyAlign'
        }

        use {
            'rhysd/vim-clang-format',
            ft = {'cpp', 'c', 'h', 'hpp'}
        }

        -- open a big terminal
        -- use {
        -- 'numtostr/FTerm.nvim',
        -- config=function()
        -- require("plugins.fterm")
        -- require("plugins.lazygit")
        -- end,
        -- }

        -- toggleterm
        use {
            'akinsho/toggleterm.nvim',
            config = function()
                require('plugins.toggleterm')
                require('plugins.lazygit')
            end
        }

        -- use {
        -- 	'windwp/nvim-autopairs',
        -- 	config=function() require('plugins/autopairs') end,
        -- 	after='nvim-compe',
        -- }

        use {
            'sbdchd/neoformat',
            cmd = 'Neoformat',
            config = function()
                vim.g.neoformat_cpp_clangformat = {
                    exe = 'clang-format',
                    args = {'-style=file'}
                }
                vim.g.neoformat_enabled_cpp = {'clangformat'}
                vim.g.neoformat_enabled_c = {'clangformat'}
            end
        }

        use {'ellisonleao/glow.nvim', run = 'GlowInstall'}
    end
)

-- -- Add additional capabilities supported by nvim-cmp
-- local capabilities = vim.lsp.protocol.make_client_capabilities()
-- capabilities.textDocument.completion.completionItem.documentationFormat = { 'markdown', 'plaintext' }
-- capabilities.textDocument.completion.completionItem.snippetSupport = true
-- capabilities.textDocument.completion.completionItem.preselectSupport = true
-- capabilities.textDocument.completion.completionItem.insertReplaceSupport = true
-- capabilities.textDocument.completion.completionItem.labelDetailsSupport = true
-- capabilities.textDocument.completion.completionItem.deprecatedSupport = true
-- capabilities.textDocument.completion.completionItem.commitCharactersSupport = true
-- capabilities.textDocument.completion.completionItem.tagSupport = { valueSet = { 1 } }
-- capabilities.textDocument.completion.completionItem.resolveSupport = {
--   properties = {
--     'documentation',
--     'detail',
--     'additionalTextEdits',
--   },
-- }

-- -- Enable some language servers with the additional completion capabilities offered by nvim-cmp
-- local servers = { 'clangd', 'rust_analyzer', 'pyright', 'tsserver' }
-- for _, lsp in ipairs(servers) do
--   nvim_lsp[lsp].setup {
--     -- on_attach = my_custom_on_attach,
--     capabilities = capabilities,
--   }
-- end

-- -- Set completeopt to have a better completion experience
-- vim.o.completeopt = 'menuone,noselect'

-- -- luasnip setup
-- local luasnip = require 'luasnip'
-- local nvim_lsp= require 'lsconfig'
-- -- nvim-cmp setup
-- local cmp = require 'cmp'
-- cmp.setup {
--   snippet = {
--     expand = function(args)
--       require('luasnip').lsp_expand(args.body)
--     end,
--   },
--   mapping = {
--     ['<C-p>'] = cmp.mapping.select_prev_item(),
--     ['<C-n>'] = cmp.mapping.select_next_item(),
--     ['<C-d>'] = cmp.mapping.scroll_docs(-4),
--     ['<C-f>'] = cmp.mapping.scroll_docs(4),
--     ['<C-Space>'] = cmp.mapping.complete(),
--     ['<C-e>'] = cmp.mapping.close(),
--     ['<CR>'] = cmp.mapping.confirm {
--       behavior = cmp.ConfirmBehavior.Replace,
--       select = true,
--     },
--     ['<Tab>'] = function(fallback)
--       if vim.fn.pumvisible() == 1 then
--         vim.fn.feedkeys(vim.api.nvim_replace_termcodes('<C-n>', true, true, true), 'n')
--       elseif luasnip.expand_or_jumpable() then
--         vim.fn.feedkeys(vim.api.nvim_replace_termcodes('<Plug>luasnip-expand-or-jump', true, true, true), '')
--       else
--         fallback()
--       end
--     end,
--     ['<S-Tab>'] = function(fallback)
--       if vim.fn.pumvisible() == 1 then
--         vim.fn.feedkeys(vim.api.nvim_replace_termcodes('<C-p>', true, true, true), 'n')
--       elseif luasnip.jumpable(-1) then
--         vim.fn.feedkeys(vim.api.nvim_replace_termcodes('<Plug>luasnip-jump-prev', true, true, true), '')
--       else
--         fallback()
--       end
--     end,
--   },
--   sources = {
--     { name = 'nvim_lsp' },
--     { name = 'luasnip' },
--   }
-- }
