lua <<EOF
  -- Setup nvim-cmp.

-- vsnip style mapping
 local has_words_before = function()
   local line, col = unpack(vim.api.nvim_win_get_cursor(0))
   return col ~= 0 and vim.api.nvim_buf_get_lines(0, line - 1, line, true)[1]:sub(col, col):match("%s") == nil
 end

 local feedkey = function(key, mode)
   vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes(key, true, true, true), mode, true)
 end


local cmp_kinds = {
  Text = '  ',
  Method = '  ',
  Function = '  ',
  Constructor = '  ',
  Field = '  ',
  Variable = '  ',
  Class = '  ',
  Interface = '  ',
  Module = '  ',
  Property = '  ',
  Unit = '  ',
  Value = '  ',
  Enum = '  ',
  Keyword = '  ',
  Snippet = '  ',
  Color = '  ',
  File = '  ',
  Reference = '  ',
  Folder = '  ',
  EnumMember = '  ',
  Constant = '  ',
  Struct = '  ',
  Event = '  ',
  Operator = '  ',
  TypeParameter = '  ',
}

  local cmp = require'cmp'

  cmp.setup({
    completion = {
      completeopt = 'menu,menuone,noselect,preview',
    },

    experimental = {
      ghost_text = true,
    },

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
      ["<Tab>"] = cmp.mapping(function(fallback)
        if cmp.visible() then
          cmp.select_next_item()
        elseif vim.fn["vsnip#available"](1) == 1 then
          feedkey("<Plug>(vsnip-expand-or-jump)", "")
        elseif has_words_before() then
          cmp.complete()
        else
          fallback() -- The fallback function sends a already mapped key. In this case, it's probably `<Tab>`.
        end
      end, { "i", "s" }),

      -- ["<Tab>"] = cmp.mapping(function(fallback)
      --   -- This little snippet will confirm with tab, and if no entry is selected, will confirm the first item
      --   if cmp.visible() then
      --     local entry = cmp.get_selected_entry()
      --     if not entry then
      --       cmp.select_next_item({ behavior = cmp.SelectBehavior.Select })
      --     else
      --       cmp.confirm()
      --     end
      --   else
      --     fallback()
      --   end
      -- end, {"i","s","c",}),
      -- ['<CR>'] = cmp.mapping.confirm({ select = true }),

    },

    sources = cmp.config.sources({
      { name = 'nvim_lsp' },
      { name = 'vsnip' }, -- For vsnip users.
    }, {
      { name = 'buffer' },
    }),

    formatting = {
      format = function(_, vim_item)
        vim_item.kind = (cmp_kinds[vim_item.kind] or '') .. vim_item.kind
        return vim_item
      end,
    },

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
  -- Use null-ls instead
  -- require'lspconfig'.eslint.setup {
  --   capabilities = capabilities,
  -- }
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
