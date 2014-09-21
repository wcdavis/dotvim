set nocompatible                       " don't keep vi compatibility

" Leader shortcuts
let mapleader=","                      " map <leader> to comma
inoremap jk <esc>                      " jk is escape

" Load Vundle plugins
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Make Vundle manage Vundle
Plugin 'gmarik/Vundle.vim'

" Vim-airline statusline
Plugin 'bling/vim-airline'
let g:airline_powerline_fonts=1
let g:airline_theme='dark'

" Git integration
Plugin 'tpope/vim-fugitive'

" Nerdtree file explorer
Plugin 'scrooloose/nerdtree'
map <leader>n :NERDTreeToggle<CR>

" Ctrl-P fuzzy searcher
Plugin 'kien/ctrlp.vim'
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

" Syntastic auto-linter
Plugin 'scrooloose/syntastic'
let g:syntastic_auto_loc_list=1
let g:syntastic_python_checkers = ['pyflakes']
let g:syntastic_error_symbol = '✗'
let g:syntastic_warning_symbol = '⚠ '

" Supertab code completion
Plugin 'ervandew/supertab'
map <Leader> <Plug>(easymotion-prefix)

" Easymotion enhanced navigation
Plugin 'Lokaltog/vim-easymotion'

" Jellybeans colorscheme
Plugin 'nanotech/jellybeans.vim'

" Git gutter
Plugin 'airblade/vim-gitgutter'

call vundle#end()
filetype plugin indent on

" UI Configuration Options
set number                             " have line numbers
set showcmd                            " show last command
set cursorline                         " highlight current line
filetype indent on                     " load lang-specific indent files
set wildmenu                           " present autocomplete options
set lazyredraw                         " redraw only when necessary
set showmatch                          " highlight matching brackets
set mouse=a                            " enable mouse control
set laststatus=2                       " always have a status line in a buffer
set colorcolumn=80                     " highlight 80th character in a line

" Key remappings
nnoremap ; :
nnoremap : ;

" Color and syntax
set t_Co=256                           " set 256 color mode
syntax on                              " syntax highlighting is on
colorscheme jellybeans

" Spaces and Tabs
set tabstop=4                          " number of visual spaces a tab counts as
set softtabstop=4                      " number of spaces in tab when editing
set expandtab                          " tabs are spaces

" Searching
set incsearch                          " search as characters are typed
set hlsearch                           " highlight matches
map <Leader>/ :noh<CR>                 " make search highlighting disappear

" Split rules
set splitright                         " split to the right
set splitbelow                         " split below
