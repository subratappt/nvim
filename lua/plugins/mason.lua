return {
  "williamboman/mason.nvim",
  cmd = { "Mason", "MasonInstall", "MasonUpdate" },
  dependencies = {
    "williamboman/mason-lspconfig.nvim",
    "WhoIsSethDaniel/mason-tool-installer.nvim"
  },
  config = function()
    -- import mason
    local mason = require("mason")

    -- import mason-lspconfig
    local mason_lspconfig = require("mason-lspconfig")

    local mason_tool_installer = require("mason-tool-installer")

    -- enable mason and configure icons
    mason.setup({
      ui = {
        icons = {
          package_installed = "✓",
          package_pending = "➜",
          package_uninstalled = "✗"
        }
      }
    })

    mason_lspconfig.setup({
      -- list of servers for mason to install
      ensure_installed = {
        -- "clangd", -- C/C++ language server, use system clangd
        -- "pyright", -- python language server, use system pyright
        "lua_ls"         -- lua language server

      },
      -- auto-install configured servers (with lspconfig)
      automatic_installation = true       -- not the same as ensure_installed
    })

    mason_tool_installer.setup({
      ensure_installed = {
        "prettier",            -- prettier formatter
        "stylua",              -- lua formatter
        "isort",               -- python formatter
        "black",               -- python formatter
        "pylint",              -- python linter
        "clang-format"         -- C/C++ formatter
      }
    })
  end
}
