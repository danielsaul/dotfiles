
source $HOME/.config/nvim/general.vim

source $HOME/.config/nvim/plug.vim
source $HOME/.config/nvim/plug_config.vim
" source $HOME/.config/nvim/plug_deoplete.vim
source $HOME/.config/nvim/plug_ale.vim
source $HOME/.config/nvim/plug_go.vim
" source $HOME/.config/nvim/plug_fzf.vim
source $HOME/.config/nvim/plug_tagbar.vim

source $HOME/.config/nvim/plug_lsp.vim
source $HOME/.config/nvim/plug_null.vim

source $HOME/.config/nvim/keys.vim

" Colour scheme
set rtp+=~/.config/nvim/neon.vim
colorscheme zenwritten

let g:zenbones_lightness = 'bright'
let g:zenbones_italic_comments = v:false
let g:zenbones_darken_comments = 50
let g:zenbones_transparent_background = v:true
let g:zenwritten_italic_comments = v:false
let g:zenwritten_transparent_background = v:true
let g:zenwritten_lighten_line_nr = 25
let g:zenwritten_darken_line_nr = 25

source $HOME/.config/nvim/plug_telescope.vim

set conceallevel=0

set complete+=k
set complete-=t
"set completeopt=noinsert,noselect,menuone
set completeopt=menu,menuone,noselect,preview
set fillchars+=msgsep:-
highlight link MsgSeparator MoreMsg


highlight Comment cterm=italic

highlight NormalFloat cterm=NONE ctermfg=14 ctermbg=0 gui=NONE guifg=#93a1a1 guibg=#222222

highlight GitGutterAdd       guifg=#b0ff5e
highlight GitGutterChange    guifg=#39aeff


" LSP highlights

" gray
highlight! CmpItemAbbrDeprecated guibg=NONE gui=strikethrough guifg=#808080
" blue
highlight! CmpItemAbbrMatch guibg=NONE guifg=#569CD6
highlight! CmpItemAbbrMatchFuzzy guibg=NONE guifg=#569CD6
" light blue
highlight! CmpItemKindVariable guibg=NONE guifg=#9CDCFE
highlight! CmpItemKindInterface guibg=NONE guifg=#9CDCFE
highlight! CmpItemKindText guibg=NONE guifg=#9CDCFE
" pink
highlight! CmpItemKindFunction guibg=NONE guifg=#C586C0
highlight! CmpItemKindMethod guibg=NONE guifg=#C586C0
" front
highlight! CmpItemKindKeyword guibg=NONE guifg=#D4D4D4
highlight! CmpItemKindProperty guibg=NONE guifg=#D4D4D4
highlight! CmpItemKindUnit guibg=NONE guifg=#D4D4D4
