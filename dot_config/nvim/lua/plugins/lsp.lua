return {
  'neovim/nvim-lspconfig',
  dependencies = {
    'williamboman/mason.nvim',
    'williamboman/mason-lspconfig.nvim',
    'yhrsh7th/nvim-cmp',
  },
  config = function()
    require('mason').setup()
    require('mason-lspconfig').setup({
      ensure_installed = {
        "lua_ls",
        "gopls",
      }
    })

    local lspconfig = require("lspconfig")
    local capabilities = require('cmp_nvim_lsp').default_capabilities()

    lspconfig.lua_ls.setup({
      capabilities = capabilities
    })

    lspconfig.gopls.setup({
      capabilities = capabilities
    })

  end
}
