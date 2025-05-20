return {
  'stevearc/conform.nvim',
  config = function()
    require("conform").setup({
      formatters_by_ft = {
        lua = { "stylua" },
        go = { "goimports" },

        javascript = { "prettierd" },
        typescript = { "prettierd" },
        vue = { "prettierd" },
        css = { "prettierd" },
        scss = { "prettierd" },
        html = { "prettierd" },
      },
      format_on_save = {
        timeout_ms = 500,
        lsp_fallback = true,
      },
    })
  end
}
