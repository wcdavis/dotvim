set nocompatible "don't keep vi compatibility

" Leader shortcuts
let mapleader=","   " map <leader> to comma
inoremap jk <esc>   " jk is escape

" Load Vundle plugins
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Make Vundle manage Vundle
Plugin 'gmarik/Vundle.vim'

" Vim-airline statusline
set laststatus=2    " always have a status line in a buffer
set t_Co=256        " set 256 color mode
Plugin 'bling/vim-airline'
let g:airline_powerline_fonts=1
let g:airline_theme='dark'

" Git integration
Plugin 'tpope/vim-fugitive'

" Nerdtree file explorer
"Plugin 'scrooloose/nerdtree'
"map <leader>n :NERDTreeToggle<CR>

Plugin 'Shougo/unite.vim'
let g:unite_split_rule = 'botright' " split on the bottom right
let g:unite_winheight = 10

" Syntastic auto-linter
Plugin 'scrooloose/syntastic'
let g:syntastic_auto_loc_list=1

call vundle#end()
filetype plugin indent on

" UI Configuration Options
set number          " have line numbers
set showcmd         " show last command
set cursorline      " highlight current line
filetype indent on  " load lang-specific indent files
set wildmenu        " present autocomplete options for commands
set lazyredraw      " redraw only when necessary
set showmatch       " highlight matching brackets
set mouse=a         " enable mouse control

" Color and syntax
syntax on           " syntax highlighting is on
set background=dark " use dark background
colorscheme molokai

" Spaces and Tabs
set tabstop=4       " number of visual spaces a tab counts for
set softtabstop=4   " number of spaces in tab when editing
set expandtab       " tabs are spaces

" Searching
set incsearch       " search as characters are typed
set hlsearch        " highlight matches

" Split rules
set splitright      " split to the right
set splitbelow      " split below
