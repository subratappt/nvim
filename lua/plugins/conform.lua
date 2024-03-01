vim.api.nvim_create_user_command("FormatDisable", function(args)
    if args.bang then
        -- FormatDisable! will disable formatting just for this buffer
        vim.b.disable_autoformat = true
    else
        vim.g.disable_autoformat = true
    end
end, {
    desc = "Disable autoformat-on-save",
    bang = true
})

vim.api.nvim_create_user_command("FormatEnable", function()
    vim.b.disable_autoformat = false
    vim.g.disable_autoformat = false
end, {
    desc = "Re-enable autoformat-on-save"
})

local options = {
    lsp_fallback = true,

    formatters_by_ft = {
        lua = {
            "stylua"
        },

        sh = {
            "shfmt"
        },

        cpp = {
            "clang-format"
        },

        c = {
            "clang-format"
        },

        python = {
            "black"
        }
    },

    format_on_save = function(bufnr)
        if vim.g.disable_autoformat or vim.b[bufnr].disable_autoformat then
            return
        end
        return {
            timeout_ms = 3000,
            lsp_fallback = true
        }
    end
}

return {
    "stevearc/conform.nvim",
    --  for users those who want auto-save conform + lazyloading!
    event = "BufWritePre",
    cmd = {
        "ConformInfo"
    },
    config = function()
        require("conform").setup(options)
    end,

    -- Keymap
    vim.keymap.set("n", "<leader>fm", function()
        vim.lsp.buf.format {
            async = true
        }
    end, {
        desc = "Formating",
        silent = true
    })
}
