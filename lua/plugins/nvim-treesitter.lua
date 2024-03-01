return {
    "nvim-treesitter/nvim-treesitter",
    event = {
        "BufReadPre",
        "BufNewFile"
    },
    build = ":TSUpdate",
    dependencies = {
        "nvim-treesitter/nvim-treesitter-textobjects",
        "windwp/nvim-ts-autotag"
    },

    config = function()
        local treesitter = require("nvim-treesitter.configs")

        treesitter.setup({
            ensure_installed = {
                "lua",
                "c",
                "cpp",
                "fortran",
                "python",
                "markdown",
                "latex"
            },
            auto_install = true,
            highlight = {
                enable = true
            },
            -- enable indentation
            indent = {
                enable = true
            },
            -- enable autotagging (w/ nvim-ts-autotag plugin)
            autotag = {
                enable = true
            }
        })

        require"nvim-treesitter.install".compilers = {
            "gcc"
        }
    end

}
