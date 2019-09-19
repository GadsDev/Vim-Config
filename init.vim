call plug#begin()
Plug 'morhetz/gruvbox'
Plug 'terryma/vim-multiple-cursors'
Plug 'sheerun/vim-polyglot'
Plug 'dracula/vim'
Plug 'scrooloose/nerdtree'
Plug 'sbdchd/neoformat'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'ryanoasis/vim-devicons'

Plug 'pangloss/vim-javascript', {'for': 'javascript'}
Plug 'elzr/vim-json', {'for': 'json'}
Plug 'othree/html5.vim', {'for': 'html'}
Plug 'hail2u/vim-css3-syntax', {'for': 'css'}
call plug#end()

colorscheme gruvbox
set background=dark

set hidden
set number
set relativenumber
set encoding=UTF-8

set linebreak	
set showbreak=+++	
set textwidth=100	
set showmatch	
set visualbell	
 
set hlsearch	
set smartcase	
set ignorecase
set incsearch	
 
set autoindent	
set shiftwidth=4	
set smartindent
set smarttab	
set softtabstop=4	
set guifont=Droid\ Sans\ Mono\ for\ Powerline\ Plus\ Nerd\ File\ Types\ 11
set ruler	
 
set undolevels=1000	
set backspace=indent,eol,start

let mapleader="\<space>"
nnoremap <leader>; A;<esc>
nnoremap <leader>ev :vsplit ~/.config/nvim/init.vim<cr>  
nnoremap <leader>sv :source ~/.config/nvim/init.vim<cr>

"--shift up and down line--
nnoremap <A-j> :m .+1<CR>==
nnoremap <A-k> :m .-2<CR>==
inoremap <A-j> <Esc>:m .+1<CR>==gi
inoremap <A-k> <Esc>:m .-2<CR>==gi
vnoremap <A-j> :m '>+1<CR>gv=gv
vnoremap <A-k> :m '<-2<CR>gv=gv
" -- NERDTree ------------
let g:NERDTreeWinSize = 28
nnoremap <D-O> :NERDTreeToggle<CR>
map <C-n> :NERDTreeToggle<CR>
nnoremap <leader>p :NERDTreeToggle<CR> #Telca leader+p abre a arvore
nnoremap <leader>o :NERDTreeFind<CR>	#Tecla leader+o abre o arquivo atual na arvore
"let g:nerdtree_tabs_open_on_gui_startup = 0
" -- NERDTree end ------------


" neoformat =========================================================== {{{ 
nnoremap <leader>ff :Neoformat <cr>
let g:neoformat_ruby_rubocopx = {
      \ 'exe': 'rubocop',
      \ 'args': ['--safe-auto-correct', '--stdin', '"%:p"', '2>/dev/null', '|', 'sed "1,/^====================$/d"'],
      \ 'stdin': 1,
      \ 'stderr': 1
      \ }
let g:neoformat_enabled_ruby = ['rubocopx']
let g:neoformat_enabled_javascript = ['standard']
" }}}

"------- json ----------
let g:vim_json_synitax_conceal = 2
