set nocompatible               " be iMproved
filetype off                   " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'

" My Bundles here:
"
" original repos on github
Bundle 'tpope/vim-fugitive'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
" vim-scripts repos
Bundle 'L9'
Bundle 'FuzzyFinder'
Bundle 'vim-ruby/vim-ruby'
Bundle 'nathanaelkane/vim-indent-guides'
Bundle 'rails.vim'
" non github repos
Bundle 'git://git.wincent.com/command-t.git'
" ...

filetype plugin indent on     " required! 
"
" Brief help
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install(update) bundles
" :BundleSearch(!) foo - search(or refresh cache first) for foo
" :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Bundle command are not allowed..


" Minibuffer Explorer Settings
let g:miniBufExplMapWindowNavVim = 1
let g:miniBufExplMapWindowNavArrows = 1
let g:miniBufExplMapCTabSwitchBufs = 1
let g:miniBufExplModSelTarget = 1

set viminfo^=! " Add recently accessed projects menu (project plugin)

" General {
  set clipboard+=unnamed  " Yanks go on clipboard instead.
  set history=256  " Number of things to remember in history.
  set autowrite  " Writes on make/shell commands
  set ruler  " Ruler on
  set nu  " Line numbers on
  set nowrap  " Line wrapping off
  set timeoutlen=250  " Time to wait after ESC (default causes an annoying delay)

  " Disable Backups & Files
  set nobackup
  set nowritebackup
  set noswapfile

  set tabstop=2 softtabstop=2 shiftwidth=2 expandtab " use 2 spaces for tabs

  set mouse=a " use mouse everywhere
" }

" Vim UI {
  colorscheme vibrantink

  set cursorcolumn " highlight the current column
  set cursorline " highlight current line

  set listchars=tab:>-,trail:- " show tabs and trailing

  set report=0 " tell us when anything is changed via :...
  
  set showcmd " show the command being typed
  set showmatch " show matching brackets
  set sidescrolloff=10 " Keep 5 lines at the size
  set statusline=%F%m%r%h%w[%L][%{&ff}]%y[%p%%][%04l,%04v]
  "              | | | | |  |   |      |  |     |    |
  "              | | | | |  |   |      |  |     |    + current
  "              | | | | |  |   |      |  |     |       column
  "              | | | | |  |   |      |  |     +-- current line
  "              | | | | |  |   |      |  +-- current % into file
  "              | | | | |  |   |      +-- current syntax in
  "              | | | | |  |   |          square brackets
  "              | | | | |  |   +-- current fileformat
  "              | | | | |  +-- number of lines
  "              | | | | +-- preview flag in square brackets
  "              | | | +-- help flag in square brackets
  "              | | +-- readonly flag in square brackets
  "              | +-- rodified flag in square brackets
  "              +-- full path to file in the buffer
" }

" Custom Mappings {
  map gm :call cursor(0, virtcol('$')/2)<CR> " go to middle of current line
" }

