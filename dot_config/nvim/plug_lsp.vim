lua <<EOF
  -- Setup nvim-cmp.
  local cmp = require'cmp'

  cmp.setup({
    snippet = {
      -- REQUIRED - you must specify a snippet engine
      expand = function(args)
        vim.fn["vsnip#anonymous"](args.body) -- For `vsnip` users.
      end,
    },
    mapping = {
      ['<C-b>'] = cmp.mapping(cmp.mapping.scroll_docs(-4), { 'i', 'c' }),
      ['<C-f>'] = cmp.mapping(cmp.mapping.scroll_docs(4), { 'i', 'c' }),
      ['<C-Space>'] = cmp.mapping(cmp.mapping.complete(), { 'i', 'c' }),
      ['<C-y>'] = cmp.config.disable, -- Specify `cmp.config.disable` if you want to remove the default `<C-y>` mapping.
      ['<C-e>'] = cmp.mapping({
        i = cmp.mapping.abort(),
        c = cmp.mapping.close(),
      }),
      -- Accept currently selected item. If none selected, `select` first item.
      -- Set `select` to `false` to only confirm explicitly selected items.
      ['<CR>'] = cmp.mapping.confirm({ select = true }),
    },
    sources = cmp.config.sources({
      { name = 'nvim_lsp' },
      { name = 'vsnip' }, -- For vsnip users.
    }, {
      { name = 'buffer' },
    })
  })

  -- Use buffer source for `/` (if you enabled `native_menu`, this won't work anymore).
  cmp.setup.cmdline('/', {
    sources = {
      { name = 'buffer' }
    }
  })

  -- Use cmdline & path source for ':' (if you enabled `native_menu`, this won't work anymore).
  cmp.setup.cmdline(':', {
    sources = cmp.config.sources({
      { name = 'path' }
    }, {
      { name = 'cmdline' }
    })
  })

  -- Setup lspconfig.
  local capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())
  -- Bash
  require('lspconfig').bashls.setup {
    capabilities = capabilities
  }
  -- CSS
  require'lspconfig'.cssls.setup {
    capabilities = capabilities,
  }
  -- Docker
  require'lspconfig'.dockerls.setup {
    capabilities = capabilities,
  }
  -- ESLint
  require'lspconfig'.eslint.setup {
    capabilities = capabilities,
  }
  -- Go PLS
  require'lspconfig'.gopls.setup {
    capabilities = capabilities,
  }
  -- HTML
  require'lspconfig'.html.setup {
    capabilities = capabilities,
  }
  -- JSON
  require'lspconfig'.jsonls.setup {
    capabilities = capabilities,
  }
  -- Python
  require'lspconfig'.pyright.setup {
    capabilities = capabilities,
  }
  -- SQL
  require'lspconfig'.sqlls.setup {
    capabilities = capabilities,
  }
  -- Tailwind
  require'lspconfig'.tailwindcss.setup {
    capabilities = capabilities,
  }
  -- Terraform
  require'lspconfig'.terraformls.setup {
    capabilities = capabilities,
  }
  -- Vue
  require('lspconfig').vuels.setup {
    capabilities = capabilities
  }
EOF
