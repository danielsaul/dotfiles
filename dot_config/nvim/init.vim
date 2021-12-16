
source $HOME/.config/nvim/general.vim

source $HOME/.config/nvim/plug.vim
source $HOME/.config/nvim/plug_config.vim
" source $HOME/.config/nvim/plug_deoplete.vim
source $HOME/.config/nvim/plug_ale.vim
source $HOME/.config/nvim/plug_go.vim
" source $HOME/.config/nvim/plug_fzf.vim
source $HOME/.config/nvim/plug_tagbar.vim

source $HOME/.config/nvim/plug_lsp.vim
source $HOME/.config/nvim/keys.vim

" Colour scheme
set rtp+=~/.config/nvim/neon.vim
colorscheme neon

source $HOME/.config/nvim/plug_telescope.vim

set conceallevel=0

set complete+=k
set complete-=t
"set completeopt=noinsert,noselect,menuone
set completeopt=menu,menuone,noselect
set fillchars+=msgsep:-
highlight link MsgSeparator MoreMsg


highlight Comment cterm=italic

highlight NormalFloat cterm=NONE ctermfg=14 ctermbg=0 gui=NONE guifg=#93a1a1 guibg=#222222

highlight GitGutterAdd       guifg=#b0ff5e
highlight GitGutterChange    guifg=#39aeff

