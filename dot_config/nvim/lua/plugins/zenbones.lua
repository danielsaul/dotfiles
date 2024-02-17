return {
  "mcchrish/zenbones.nvim",
  name = "zenbones",
  lazy = false,
  priority = 1000,
  enabled = true,
  dependencies = {
    "rktjmp/lush.nvim"
  },
  config = function()
    vim.g.zenwritten_italic_comments = false
    vim.g.zenwritten_transparent_background = true
    vim.g.zenwritten_lighten_line_nr = 25
    vim.g.zenwritten_darken_line_nr = 25
  end,
}
