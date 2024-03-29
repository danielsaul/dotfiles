" My plugins
" Using vim-plug


call plug#begin()

Plug 'cormacrelf/dark-notify'

Plug 'savq/melange-nvim'
Plug 'rktjmp/lush.nvim'
Plug 'mcchrish/zenbones.nvim'

Plug 'nvim-lua/plenary.nvim'

" General
Plug 'dbakker/vim-projectroot'          " Find project root
Plug 'suy/vim-context-commentstring'    " Different comment styles in same file
Plug 'tpope/vim-commentary'             " Comments yay
Plug 'ntpeters/vim-better-whitespace'   " Highlight eol whitespace
Plug 'Shougo/echodoc.vim'               " Show doc line in status bar
Plug 'Yggdroot/indentLine'              " Indentation lines for spaces
Plug 'kosayoda/nvim-lightbulb'          " Show code actions

" Plug 'majutsushi/tagbar'    " Tag window
Plug 'preservim/nerdtree'  " Show file list
Plug 'Xuyuanp/nerdtree-git-plugin'

" Window resizing
Plug 'camspiers/animate.vim'
Plug 'camspiers/lens.vim'

" Bracket closing
" Plug 'rstacruz/vim-closer'
"Plug 'jiangmiao/auto-pairs'

" Linting
" Plug 'neomake/neomake'
" Plug 'w0rp/ale'
Plug 'jose-elias-alvarez/null-ls.nvim'
Plug 'bufbuild/vim-buf'

" Coc.nvim - LSP auto-completion etc
" Plug 'neoclide/coc.nvim', {'tag': '*', 'do': { -> coc#util#install()}}
" Plug 'neoclide/coc-css', {'do': 'yarn install --frozen-lockfile'}
" Plug 'neoclide/coc-emoji', {'do': 'yarn install --frozen-lockfile'}
" Plug 'neoclide/coc-html', {'do': 'yarn install --frozen-lockfile'}
" Plug 'neoclide/coc-json', {'do': 'yarn install --frozen-lockfile'}
" Plug 'neoclide/coc-omni', {'do': 'yarn install --frozen-lockfile'}
" Plug 'neoclide/coc-tsserver', {'do': 'yarn install --frozen-lockfile'}
" Plug 'neoclide/coc-vetur', {'do': 'yarn install --frozen-lockfile'}
" Plug 'neoclide/coc-pairs', {'do': 'yarn install --frozen-lockfile'}

" LSP
Plug 'neovim/nvim-lspconfig'

Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/nvim-cmp'

Plug 'hrsh7th/cmp-vsnip'
Plug 'hrsh7th/vim-vsnip'

" Fuzzy
Plug '/usr/local/opt/fzf'
Plug 'junegunn/fzf.vim'

" Telescope Fuzzy
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-fzf-native.nvim', { 'do': 'make' }

" Testing
Plug 'vim-test/vim-test'

" Pretty
Plug 'RRethy/vim-hexokinase', {'do': 'make hexokinase' }  " Colours

" Airline
" Plug 'vim-airline/vim-airline'
" Plug 'vim-airline/vim-airline-themes'
Plug 'nvim-lualine/lualine.nvim'
Plug 'nvim-tree/nvim-web-devicons'

" Colour schemes
" Plug 'crusoexia/vim-monokai'
"Plug 'rakr/vim-two-firewatch'
"Plug 'arcticicestudio/nord-vim'
" Plug 'reedes/vim-colors-pencil'
Plug 'rakr/vim-two-firewatch'
" Plug 'jacoborus/tender.vim'
" Plug 'nightsense/snow'

" Git
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'
Plug 'tommcdo/vim-fugitive-blame-ext'
Plug 'tveskag/nvim-blame-line'


"
" Languages
"

" Javascript
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'posva/vim-vue'

" Go
Plug 'fatih/vim-go'
Plug 'sebdah/vim-delve'

" HTML/CSS
Plug 'othree/html5.vim'
Plug 'JulesWang/css.vim'

" SQL
Plug 'shmup/vim-sql-syntax'

" TOML
Plug 'cespare/vim-toml'

" Python
Plug 'hynek/vim-python-pep8-indent'

" LaTeX
Plug 'lervag/vimtex'

" Terraform
Plug 'hashivim/vim-terraform'

" Markdown
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app & yarn install'  }


" Deoplete auto-completion
" Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
" Plug 'juliosueiras/vim-terraform-completion'
" Plug 'zchee/deoplete-jedi'
" Plug 'zchee/deoplete-clang'
" Plug 'carlitux/deoplete-ternjs', { 'do': 'npm install -g tern' }
" " Plug 'zchee/deoplete-go', { 'do': 'make'}

call plug#end()
