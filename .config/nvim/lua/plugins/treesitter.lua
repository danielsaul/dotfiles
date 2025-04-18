return {
 "nvim-treesitter/nvim-treesitter",
 build = ":TSUpdate",
 config = function () 
   local configs = require("nvim-treesitter.configs")

   configs.setup({
     ensure_installed = {
       "c",
       "lua",
       "vim",
       "vimdoc",
       "javascript",
       "typescript",
       "html",
       "css",
       "scss",
       "go",
       "gomod",
       "proto",
       "python",
       "rust",
       "yaml",
       "json",
       "bash",
       "markdown",
       "dockerfile",
       "make",
       "sql",
       "vue",
     },
     sync_install = false,
     highlight = { enable = true },
     indent = { enable = true },  
    })
  end
}
