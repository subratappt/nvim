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

        use {
            'rafi/awesome-vim-colorschemes',
            config = function()
                vim.cmd('colorscheme onedark')
            end
        }

        use {
            'nvim-telescope/telescope.nvim',
            requires = {{'nvim-lua/plenary.nvim'}},
            config = function()
                require('plugins.telescope')
            end,
        
            use {'nvim-telescope/telescope-fzf-native.nvim', run = 'make'},
            use {'nvim-telescope/telescope-media-files.nvim'}

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
            -- event = 'BufRead'
        }

        --nvim-lspconfig: built-in lsp--
        use {
            'neovim/nvim-lspconfig',
            config = function()
                require('plugins.lsp')
            end,
            -- after = 'nvim-lspinstall'
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
            'hrsh7th/nvim-cmp',
            --event="InserEnter",
            config = function()
                require('plugins.cmp')
            end
        }
 
         use {
             'L3MON4D3/LuaSnip',
             config = function()
                 require('plugins.luasnip')
             end,
             wants="friendly-snippets",
             -- after="nvim-cmp",
         }

         use {
             "saadparwaiz1/cmp_luasnip",
              after = "LuaSnip",
         }

         use {
             "hrsh7th/cmp-nvim-lua",
              after = "cmp_luasnip",
         }

         use {
             "hrsh7th/cmp-nvim-lsp",
              after = "cmp-nvim-lua",
         }

         use {
             "hrsh7th/cmp-buffer",
              after = "cmp-nvim-lsp",
         }

         use {
             "rafamadriz/friendly-snippets",
              after = "cmp-buffer",
         }

         use {'hrsh7th/cmp-path',
             after = "cmp-nvim-lsp",
         }
         use {'hrsh7th/cmp-calc',
             after = "cmp-nvim-lsp",
         }
         use {'hrsh7th/cmp-vsnip',
             after = "cmp-nvim-lsp",
         }
    

          -- use {'hrsh7th/vim-vsnip'}
          -- use {'hrsh7th/vim-vsnip-integ'}




         use {
             'windwp/nvim-autopairs',
             config = function()
                 require('plugins/autopairs')
             end,
             after = 'nvim-cmp'
         }

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

        -- TrueZen.nvim: zen mode in neovim--
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
            -- event = 'VimEnter',
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


        use {
            'airblade/vim-rooter',
            event = 'VimEnter',
            config = function()
                vim.g.rooter_patterns = {'.git', 'Cargo.toml'}
            end
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

        use {
            's1n7ax/nvim-terminal',
            config = function()
                vim.o.hidden = true
                require('nvim-terminal').setup()
            end
        }



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

        use {
            'glepnir/dashboard-nvim',
            cmd = {
                'Dashboard',
                'DashboardNewFile',
                'DashboardJumpMarks',
                'SessionLoad',
                'SessionSave'
            },
            config = function()
                require 'plugins.dashboard'
            end
        }
    end
)
