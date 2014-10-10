set nocompatible                " choose no compatibility with legacy vi
filetype off                    " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" Colorschemes
Plugin 'chriskempson/tomorrow-theme', {'rtp': 'vim/'}
Plugin 'tomasr/molokai'
Plugin 'morhetz/gruvbox'

" Fugitive - git wrapper
Plugin 'tpope/vim-fugitive'

" Surround plugin, for quoting/parenthesizing
Plugin 'tpope/vim-surround'

" Navigation tree
Plugin 'scrooloose/nerdtree'

" Javascript indentation and syntax support
Plugin 'pangloss/vim-javascript'

" Status/tabline
Plugin 'bling/vim-airlive'

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

" Indentation
set autoindent
set smartindent
" Adding tags for proper HTML indentation
let g:html_indent_inctags = 'html,body,head,tbody,p,li,dd,dt,h1,h2,h3,h4,h5,h6,blockquote'

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

" Change <leader> to ,
let mapleader = ","

" Quickly edit/reload the vimrc file
nmap <silent> <leader>ev :e $MYVIMRC<CR>
nmap <silent> <leader>sv :so $MYVIMRC<CR>

" Map <leader><leader> to switch between buffers (instead of <C-^>)
nnoremap <leader><leader> <c-^>

" Hide buffers instead of closing them (alows to open new files without having
" to write or undo changes in the open buffer)
set hidden

" Hide GUI tabline (cause it's ugly)
set guioptions-=e

" Make airline (status/tabline plugin) appear always (and not just on splits)
set laststatus=2

" Enable airline enhanced tabline
let g:airline#extensions#tabline#enabled = 1

" Map <leader>r to view the current buffer in NERDTree
map <leader>r :NERDTreeFind<cr>

" Associate *.handlebars with html filetype
au BufNewFile,BufRead *.handlebars set filetype=html
