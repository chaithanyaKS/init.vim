set number relativenumber
set incsearch
inoremap kj <ESC>


" remove highlighting after search 
set nohlsearch

" increasing space in line number
set numberwidth=6

" case insensitive searching
set ignorecase

" smartcase
set smartcase


" Fira code font
set guifont=Fira\ Code

"set runtime path to include Vundle
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()
" Vundle package
Plugin 'gmarik/Vundle.vim'

" Autocompletion plugin
Plugin 'neoclide/coc.nvim', {'branch': 'release'}

" auto close brackets
Plugin 'jiangmiao/auto-pairs'

" auto close tags
Plugin 'alvan/vim-closetag'

" plugin for python indentation
Plugin 'vim-scripts/indentpython.vim'

" plugin for syntax checking
Plugin 'vim-syntastic/syntastic'

" Plugin for PEP 8 checking
Plugin 'nvie/vim-flake8'

" Plugin for nerdtree
Plugin 'scrooloose/nerdtree'

" Plugin for super search
Plugin 'kien/ctrlp.vim'

" Plugin git integration
Plugin 'tpope/vim-fugitive'

" Plugin for colorschemes
Plugin 'joshdick/onedark.vim'

" Plugin for status bar
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
call vundle#end()

" remapping leader to space
let mapleader=" "

" cspell remaps
vmap <leader>a <Plug>(coc-codeaction-selected)
nmap <leader>a <Plug>(coc-codeaction-selected)

" minimum number of lines before scrolling
set scrolloff=8

filetype plugin indent on

" enable syntax highlighting
syntax enable

"indent when moving to the next line while writing mode
set autoindent

" expand tabs to spaces
set expandtab

"show visual line under the cursor's current line
set cursorline

" show matching brackets
set showmatch

" enable all python syntax highlighting features
let python_highlight_all=1

" disabling arrow keys
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>


set splitbelow
set splitright

" split navigation
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Enable code folding
set foldmethod=indent
set foldlevel=99

" code folding with spacebar
nnoremap <space> za

" default spacing
set tabstop=4
set softtabstop=4
set shiftwidth=4
set fileformat=unix

" PEP 8 standard for python
au BufNewFile,BufRead *.py
            \ set textwidth=79 |

" For full stack development
au BufNewFile,BufRead *.js, *.html, *.css
            \ set tabstop=2 |
            \ set softtabstop=2 |
            \ set shiftwidth=2 


" utf-8 support 
set encoding=utf-8

if exists('+termguicolors')
  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
  set termguicolors
endif

set t_Co=256
colorscheme onedark
set background=dark 
let g:airline_theme='onedark'

" Ignore .pyc file
let NERDTreeIgnore=['.pyc$', '\~$']

" Shortcuts
" map ctrl+s to save
nnoremap <silent> <C-S> :if expand("%") == ""<CR>browse confirm w<CR>else<CR>confirm w<CR>endif<CR>

" remap ctrl+b to open nerdtree
nnoremap <C-B> :NERDTreeToggle<CR>

set nobackup
set nowritebackup
set updatetime=300
set timeoutlen=500
set clipboard=unnamedplus



