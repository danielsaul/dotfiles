return {
  "hrsh7th/nvim-cmp",
  dependencies = {
    "hrsh7th/cmp-nvim-lsp",
    "hrsh7th/cmp-buffer",
    "hrsh7th/cmp-path",
    -- "hrsh7th/cmp-nvim-lsp-signature-help",
    "saadparwaiz1/cmp_luasnip",
    "onsails/lspkind.nvim"
  },
  config = function()
    local cmp = require("cmp")
    local lspkind = require("lspkind")
    local cmp_autopairs = require("nvim-autopairs.completion.cmp")

    cmp.event:on("confirm_done", cmp_autopairs.on_confirm_done())

    local has_words_before = function()
      unpack = unpack or table.unpack
      local line, col = unpack(vim.api.nvim_win_get_cursor(0))
      return col ~= 0 and vim.api.nvim_buf_get_lines(0, line - 1, line, true)[1]:sub(col, col):match("%s") == nil
    end

    require("cmp").setup({

      snippet = {
        expand = function(args) require("luasnip").lsp_expand(args.body) end,
      },

      sources = {
        -- { name = 'nvim_lsp_signature_help' },
        { name = "nvim_lsp" },
        { name = "path" },
        { name = "buffer",  keyword_length = 3 }
      },

      mapping = cmp.mapping.preset.insert({
        ["<CR>"] = cmp.mapping.confirm({ behavior = cmp.ConfirmBehavior.Replace, select = true }),
        ["<Tab>"] = cmp.mapping(function(fallback)
          if cmp.visible() then
            cmp.select_next_item()
          elseif has_words_before() then
            cmp.complete()
          else
            fallback()
          end
        end, { "i", "s" }),
      }),

      formatting = {
        -- Show where the completion opts are coming from
        format = lspkind.cmp_format({
          mode = 'symbol_text', -- show only symbol annotations
          maxwidth = 50,
          ellipsis_char = '...',
          show_labelDetails = true, -- show labelDetails in menu. Disabled by default
          before = function(entry, vim_item)
            return vim_item
          end
        })
      },

      window = {
        completion = cmp.config.window.bordered(),
        documentation = cmp.config.window.bordered(),
      },

      experimental = {
        ghost_text = true,
      },

    })
  end
}
