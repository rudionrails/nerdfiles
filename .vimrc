set nocompatible               " be iMproved
filetype off                   " required!

" This file uses `vundle` to manage plugins
" For installation, see: http://github.com/gmarik/vundle
"
" If you do not already have vundle installed, simply clone the repo into your .vim directory like so:
"   git clone http://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
"
" After that, open up vim and type:
"   :BundleInstall
"

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
Bundle 'gmarik/vundle'

" My Bundles here:
Bundle 'Lokaltog/vim-easymotion'
Bundle 'vim-ruby/vim-ruby'
Bundle 'git://github.com/nathanaelkane/vim-indent-guides.git'

Bundle 'git://github.com/vim-scripts/minibufexpl.vim.git'
Bundle 'git://git.wincent.com/command-t.git'
Bundle 'git://github.com/scrooloose/nerdtree.git'

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



set viminfo^=! " Add recently accessed projects menu (project plugin)

" General {
  set clipboard+=unnamed " Yanks go on clipboard instead.
  set history=1000 " Number of things to remember in history.
  set undolevels=1000 " use many muchos levels of undo
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

  set ignorecase " ignore case when searching
  set smartcase " ignore case if search pattern is all lowercase, case-sensitive otherwise

  " Minibuffer Explorer Settings
  let g:miniBufExplMapWindowNavVim = 1
  let g:miniBufExplMapWindowNavArrows = 1
  let g:miniBufExplMapCTabSwitchBufs = 1
  let g:miniBufExplModSelTarget = 1

  " Indent Guides Settings
  let g:indent_guides_guide_size = 1
" }

" Vim UI {
  set background=dark
  colorscheme vibrantink

  " set cursorcolumn " highlight the current column
  set cursorline   " highlight current line
  set hlsearch     " highlight search terms
  set incsearch    " show search matches as you type

  set list
  set listchars=tab:+-,trail:.,extends:# " show tabs and trailing

  set report=0 " tell us when anything is changed via :...

  set showcmd " show the command being typed
  set showmatch " show matching brackets
  set sidescrolloff=10 " Keep 5 lines at the size

  " set statusline=%F%m%r%h%w[%L][%{&ff}]%y[%p%%][%04l,%04v]
  " "              | | | | |  |   |      |  |     |    |
  " "              | | | | |  |   |      |  |     |    + current
  " "              | | | | |  |   |      |  |     |       column
  " "              | | | | |  |   |      |  |     +-- current line
  " "              | | | | |  |   |      |  +-- current % into file
  " "              | | | | |  |   |      +-- current syntax in
  " "              | | | | |  |   |          square brackets
  " "              | | | | |  |   +-- current fileformat
  " "              | | | | |  +-- number of lines
  " "              | | | | +-- preview flag in square brackets
  " "              | | | +-- help flag in square brackets
  " "              | | +-- readonly flag in square brackets
  " "              | +-- rodified flag in square brackets
  " "              +-- full path to file in the buffer
" }

" Custom Mappings {
  " go to middle of current line
  map gm :call cursor(0, virtcol('$')/2)<CR> 

  " Mappings to access buffers (don't use "\p" because a
  " delay before pressing "p" would accidentally paste).
  " \l       : list buffers
  " \p \n \g : go previous/next/last-used
  " \1 \2 \3 : go to buffer 1/2/3 etc
  nnoremap <C-l> <ESC>:ls<CR>
  nnoremap <C-p> <ESC>:bp<CR>
  nnoremap <C-n> <ESC>:bn<CR>
  nnoremap <C-g> <ESC>:e#<CR>
  nnoremap <C-1> <ESC>:1b<CR>
  nnoremap <C-2> <ESC>:2b<CR>
  nnoremap <C-3> <ESC>:3b<CR>
  nnoremap <C-4> <ESC>:4b<CR>
  nnoremap <C-5> <ESC>:5b<CR>
  nnoremap <C-6> <ESC>:6b<CR>
  nnoremap <C-7> <ESC>:7b<CR>
  nnoremap <C-8> <ESC>:8b<CR>
  nnoremap <C-9> <ESC>:9b<CR>
  nnoremap <C-0> <ESC>:10b<CR>

  " It's useful to show the buffer number in the status line.
  set laststatus=2
  set statusline=%02n:%<%f\ %h%m%r%=%-14.(%l,%c%V%)\ %P
" }

