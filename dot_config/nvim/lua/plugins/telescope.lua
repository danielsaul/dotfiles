return {
  'nvim-telescope/telescope.nvim', tag = '0.1.x',
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-treesitter/nvim-treesitter",
    "nvim-tree/nvim-web-devicons",
  },
  config = function()

    local actions = require 'telescope.actions'

    require('telescope').setup({
      defaults = {
        mappings = {
          i = {
            ['<esc>'] = actions.close,
          }
        }
      }
    })
   
    local builtin = require('telescope.builtin')
    vim.keymap.set("n", "<C-space>", builtin.find_files, {})
    vim.keymap.set("n", "<C-b>", builtin.buffers, {})
    vim.keymap.set("n", "<C-f>", builtin.live_grep, {})

    -- Load fzf-native extensions
    require('telescope').load_extension('fzf')

    -- Load project.nvim extension
    require('telescope').load_extension('projects')

  end
}
