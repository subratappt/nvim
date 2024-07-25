return {
    "CopilotC-Nvim/CopilotChat.nvim",
    branch = "canary",
    dependencies = {
        {
            "zbirenbaum/copilot.lua"
        }, -- or github/copilot.vim
        {
            "nvim-lua/plenary.nvim"
        } -- for curl, log wrapper
    },
    opts = {
        debug = false -- Enable debugging
        -- See Configuration section for rest
    },
    -- See Commands section for default commands if you want to lazy load on them
    cmd = {},
    keys = {
        {
            "<leader>cc",
            function()
                local input = vim.fn.input("Quick Chat: ")
                if input ~= "" then
                    require("CopilotChat").ask(input, {
                        selection = require("CopilotChat.select").buffer
                    })
                end
            end,
            desc = "CopilotChat - Quick chat"
        }
    }

}
