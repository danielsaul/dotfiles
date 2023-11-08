lua <<EOF

local null_ls = require("null-ls")

local sources = {

  -- general
    null_ls.builtins.formatting.trim_whitespace,

  -- eslint
    null_ls.builtins.formatting.eslint_d,
    null_ls.builtins.diagnostics.eslint_d,
    null_ls.builtins.code_actions.eslint_d,

  -- stylelint
    null_ls.builtins.formatting.stylelint,

  -- prettier
    -- null_ls.builtins.formatting.prettier,

  -- json
    null_ls.builtins.diagnostics.jsonlint,

  -- go
    null_ls.builtins.diagnostics.golangci_lint,

  -- python
    null_ls.builtins.diagnostics.flake8,

  -- buf
    null_ls.builtins.diagnostics.buf,

  -- markdown
    null_ls.builtins.diagnostics.markdownlint,

  -- docker
  null_ls.builtins.diagnostics.hadolint,

  -- terraform
  null_ls.builtins.formatting.terraform_fmt,

  -- sql
  null_ls.builtins.formatting.sqlfluff,

  -- make
    null_ls.builtins.diagnostics.checkmake,

  -- git
    null_ls.builtins.code_actions.gitrebase,

  -- github actions
    null_ls.builtins.diagnostics.actionlint,

  -- spag
    null_ls.builtins.diagnostics.proselint,
    null_ls.builtins.code_actions.proselint,
    null_ls.builtins.completion.spell,

}

null_ls.setup({
  sources = sources,

  on_attach = function(client)
      if client.resolved_capabilities.document_formatting then
          vim.cmd([[
          augroup LspFormatting
              autocmd! * <buffer>
              autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting_sync()
          augroup END
          ]])
      end
  end,

})

EOF
