"Telescope

" Shortcuts
nnoremap <C-space> <cmd>Telescope find_files<cr>
nnoremap <C-b> <cmd>Telescope buffers<cr>
nnoremap <C-f> <cmd>Telescope live_grep<cr>

" Border highlight groups
highlight TelescopeBorder         guifg=#4a4a4a
highlight TelescopePromptBorder   guifg=#4a4a4a
highlight TelescopeResultsBorder  guifg=#4a4a4a
highlight TelescopePreviewBorder  guifg=#4a4a4a

" Highlight characters your input matches
highlight TelescopeMatching       guifg=#5ec8dc

highlight TelescopeSelection      guifg=#D79921 gui=bold " Selected item

lua << EOF
local actions = require("telescope.actions")
require("telescope").setup{
  defaults = {
    mappings = {
      i = {
        ["<esc>"] = actions.close
      },
    },
  }
}
EOF
