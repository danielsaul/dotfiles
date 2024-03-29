

" Project root - do not change automatically
let g:rooter_manual_only = 1

" Echodoc
let g:echodoc#enable_at_startup = 1
let g:echodoc#type = 'floating'
let g:echodoc#highlight_identifier = "Function"
let g:echodoc#highlight_arguments = "Type"

" NERDTree ctrl-n
function NerdToggle()
    if &filetype == 'nerdtree'
        :NERDTreeToggle
    else
        :ProjectRootExe NERDTreeFind
    endif
endfunction
map <C-n> :call NerdToggle()<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
let g:NERDTreeGitStatusConcealBrackets = 1
let NERDTreeMapOpenVSplit='<C-v>'

" Fugitive, git status toggle ctrl-/
function! ToggleGStatus()
    if buflisted(bufname('.git/index'))
        bd .git/index
    else
        topleft vertical Git
    endif
endfunction
command ToggleGStatus :call ToggleGStatus()
nmap <silent> <C-_> :ToggleGStatus<CR>

augroup fugitive_au
  autocmd!
  autocmd FileType fugitive setlocal winfixwidth
augroup END

" Indent Line
set list lcs=tab:\▏\                    " Standard tab line
let g:indentLine_char = '▏'             " Space line
" let g:indentLine_color_term = 236
if &background == 'dark'
  let g:indentLine_color_gui = '#2E2E2E'
else
  let g:indentLine_color_gui = '#E6E6E6'
endif

lua << END
require('dark_notify').run()
END

" Lualine
lua << END
require('lualine').setup {
	options = { theme = "zenwritten" },
}
END

" Airline
let g:airline_powerline_fonts = 1
let g:neon_airline = 1
let g:airline_theme='neon'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#ale#enabled = 1

" EOL Whitespace highlight
highlight ExtraWhitespace ctermbg=52 guibg=#5b1a2c

" Git gutter
let g:gitgutter_override_sign_column_highlight = 0
let g:gitgutter_sign_added = '│'
let g:gitgutter_sign_modified = '│'

" vue syntax highlighting is bad.
autocmd FileType vue syntax sync fromstart

" Terraform - auto format on save
let g:terraform_fmt_on_save=1

" Enable colour previews in any filetype
let g:Hexokinase_ftAutoload = ['*']
let g:Hexokinase_refreshEvents = ['TextChanged', 'TextChangedI']

"vim-test
let test#javascript#jest#file_pattern = '\v.(unit|spec|test)\.(js|jsx|coffee|ts|tsx)'
let test#project_root = projectroot#guess()
let test#strategy = "neovim"
let test#neovim#term_position = "vertical belowright"

" Lens
" Do not resize these types of 'files' or windows
let g:lens#disabled_filetypes = ['nerdtree', 'fzf']

" Light bulb - always update
autocmd CursorHold,CursorHoldI * lua require'nvim-lightbulb'.update_lightbulb()
