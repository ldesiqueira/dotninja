" Don't load filetype plugins... for now
filetype off
filetype plugin indent off
" Use vim settings not vi
set nocompatible

" Load some overides if they exist
if filereadable(expand("~/.vimrc.before"))
  source ~/.vimrc.before
endif

" VIM CUSTOMIZATIONS START

let mapleader = ','                   " leader key is possible trigger for many mappings and it's nice when its ,
set number                            " I like number lines
set backspace=indent,eol,start        " backspaces in insert mode
set hidden                            " so vim can open buffers in the background
syntax on                             " turn on basic syntax highlighting
set noswapfile                        " turn off swapfiles
set nobackup                          " turn off swapfiles
set nowb                              " turn off swapfiles
set autoindent                        " tab indentation
set smartindent                       " tab indentation
set smarttab                          " tab indentation
set shiftwidth=2                      " tab indentation
set softtabstop=2                     " tab indentation
set tabstop=2                         " tab indentation
set expandtab                         " tab indentation
set textwidth=79                      " try limiting your code to 80 lines
set incsearch                         " Find the next match as we type the search
set hlsearch                          " Highlight searches by default
set ignorecase                        " Ignore case when searching...
set smartcase                         " ...unless we type a capital
set list listchars=tab:\ \ ,trail:·   " see tabs and trailing spaces
syntax enable                         " make things pretty
colorscheme solarized                 " make things pretty
set background=dark                   " make things pretty
set splitbelow                        " set the location of your splits to be more natural
set splitright                        " set the location of your splits to be more natural
set encoding=utf-8                    " probably a good idea to utf-8


" VIM CUSTOMIZATIONS END

" Load vim plugins and vim-plug
:so ~/.vim/vim-plugs

" CUSTOMIZE PLUGINS START
" vim-airline needs this to work
:set laststatus=2

" enable neocomplete
let g:neocomplete#enable_at_startup = 1


" Turn filetype stuff on before you load filetype stuff, after plugins have been loaded
filetype on
filetype plugin indent on

" Load additional color alterations
:so ~/.vim/colors/settings

" YCM Configuration git@github.com:ldesiqueira/YouCompleteMe.git
":so ~/.vim/plug-configs/ycm.vim

" remember position of last command
if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

" airline theme selection from https://github.com/ldesiqueira/vim-airline-themes

let g:airline_theme='solarized'
