return {
  "williamboman/mason.nvim",
  dependencies = {
    "williamboman/mason-lspconfig.nvim",
  },
  config = function()
    -- import mason
    local mason = require("mason")

    -- import mason-lspconfig
    local mason_lspconfig = require("mason-lspconfig")

    -- enable mason and configure icons
    mason.setup({
      ui = {
        icons = {
          package_installed = "✓",
          package_pending = "➜",
          package_uninstalled = "✗",
        },
      },
    })

    -- list of servers for mason to install
    mason_lspconfig.setup({
      ensure_installed = { "astro", "tailwindcss", "gopls" },
      automatic_installation = true, -- Habilita la instalación automática de servidores LSP
    })
  end,
}

