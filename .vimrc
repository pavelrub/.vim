set nocompatible                " choose no compatibility with legacy vi
filetype off                    " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" Tomorrow-Theme colorscheme
Bundle 'chriskempson/tomorrow-theme', {'rtp': 'vim/'}

" Fugitive - git wrapper
Plugin 'tpope/vim-fugitive'

" Surround plugin, for quoting/parenthesizing
Plugin 'tpope/vim-surround'

call vundle#end()            " required
filetype plugin indent on    " required

" Put your non-Plugin stuff after this line

syntax enable

set encoding=utf-8
set showcmd                     " display incomplete commands
filetype plugin indent on       " load file type plugins + indentation

"" Whitespace
set nowrap                      " don't wrap lines
set tabstop=2 shiftwidth=2      " a tab is two spaces (or set this to 4)
set expandtab                   " use spaces, not tabs (optional)
set backspace=indent,eol,start  " backspace through everything in insert mode

"" Searching
set hlsearch                    " highlight matches
set incsearch                   " incremental searching
set ignorecase                  " searches are case insensitive...
set smartcase                   " ... unless they contain at least one capital letter

" Colorscheme 
colorscheme Tomorrow-Night
  
" Font
if has("gui_running")
  if has("gui_gtk2")
    set guifont=Inconsolata\ 12
  endif
endif

" Display relative line number for easy jumps
set relativenumber

" Remove menu bars and such
set guioptions-=m  "menu bar
set guioptions-=T  "toolbar
set guioptions-=r  "scrollbar
