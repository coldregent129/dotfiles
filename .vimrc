" Function to set a random color scheme
function! SetRandomColorScheme()
    let color_scheme_name = system('~/.vim/random_color_scheme.sh')
    execute 'colorscheme ' . color_scheme_name
endfunction

call SetRandomColorScheme()

" Disable compatibility with vi which can cause unexpected issues.
set nocompatible

" Enable type file detection. Vim will be able to try to detect the type of file in use.
filetype on

" Enable plugins and load plugin for the detected file type.
filetype plugin on

" Load an indent file for the detected file type.
filetype indent on

" Turn syntax highlighting on.
syntax on

" Add numbers to each line on the left-hand side.
set number

" Set shift width to 4 spaces.
set shiftwidth=4

" Set tab width to 4 columns.
set tabstop=4

" Use space characters instead of tabs.
set expandtab

" While searching though a file incrementally highlight matching characters as you type.
set incsearch

" This will allow you to search specifically for capital letters.
set smartcase

" Use highlighting when doing a search.
set hlsearch

" Set the commands to save in history default number is 20.
set history=500

" Enable auto completion menu after pressing TAB.
set wildmenu

" Make wildmenu behave like similar to Bash completion.
set wildmode=list:longest

" There are certain files that we would never want to edit with Vim.
" Wildmenu will ignore files with these extensions.
set wildignore=*.docx,*.jpg,*.png,*.gif,*.pdf,*.pyc,*.exe,*.flv,*.img,*.xlsx

" PLUGINS ---------------------------------------------------------------- {{{

" Plugin code goes here.

call plug#begin('~/.vim/plugged')

Plug 'preservim/nerdtree'
Plug 'airblade/vim-gitgutter'

call plug#end()
" }}}


" MAPPINGS --------------------------------------------------------------- {{{

" Mappings code goes here.

" }}}


" VIMSCRIPT -------------------------------------------------------------- {{{

" This will enable code folding.
" Use the marker method of folding.
" Basics:
    " zo : to open a single fold under the cursor
    " zc : to close the folder under the cursor
    " zR " to open all folds
    " zM : to close all folds
augroup filetype_vim
    autocmd!
    autocmd FileType vim setlocal foldmethod=marker
augroup END

" More Vimscripts code goes here.

" }}}


" STATUS LINE ------------------------------------------------------------ {{{

" Status bar code goes here.

" }}}
