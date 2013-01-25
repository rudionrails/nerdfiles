set nocompatible               " be iMproved
filetype off                   " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
Bundle 'gmarik/vundle'

" Brief help
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install(update) bundles
" :BundleSearch(!) foo - search(or refresh cache first) for foo
" :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Bundle command are not allowed..


" File navigation plugins
Bundle 'git://git.wincent.com/command-t.git'
Bundle 'git://github.com/scrooloose/nerdtree.git'
Bundle 'git://github.com/majutsushi/tagbar.git'
Bundle 'git://github.com/vim-scripts/minibufexpl.vim.git'
Bundle 'git://github.com/vim-scripts/BufOnly.vim.git'
Bundle 'git://github.com/mileszs/ack.vim'
Bundle 'git://github.com/Lokaltog/vim-easymotion.git'
Bundle 'git://github.com/Lokaltog/vim-powerline.git'
Bundle 'git://github.com/nathanaelkane/vim-indent-guides.git'

" Syntax highlighting
Bundle 'vim-ruby/vim-ruby'
Bundle 'tpope/vim-markdown'
Bundle 'tpope/vim-surround'
Bundle 'tpope/vim-cucumber'
Bundle 'tpope/vim-rails'
Bundle 'tpope/vim-haml'

" Misc
Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-commentary'
Bundle 'tpope/vim-unimpaired'
Bundle 'tpope/vim-repeat'
Bundle 'vim-scripts/ruby-matchit'

" Folding plugins
Bundle 'git://github.com/nelstrom/vim-markdown-folding.git'

filetype plugin indent on     " required!
syntax on

set viminfo^=! " Add recently accessed projects menu (project plugin)

" General {
  set encoding=utf-8

  set clipboard+=unnamed " Yanks go on clipboard instead.
  set history=1000 " Number of things to remember in history.
  set undolevels=1000 " use many muchos levels of undo
  set autowrite  " Writes on make/shell commands
  set ruler  " Ruler on
  set ai  " Set auto-indenting on for programming
  set nu  " Line numbers on
  set timeoutlen=250  " Time to wait after ESC (default causes an annoying delay)

  set wildmenu  " Turn on the wildmenu
  set wildmode=list:longest,full
  set hid   " A buffer becomes hidden when it is abandoned

  set splitright " open split window to the right (default: left)
  " set splitbelow " open split window below (default: above)

  set wrap  " Line wrapping on
  let &showbreak = "↳ "

  " Disable Backups & Files
  set nobackup
  set nowritebackup
  set noswapfile

  set tabstop=2 softtabstop=2 shiftwidth=2 expandtab " use 2 spaces for tabs

  set mouse=a " use mouse everywhere

  set ignorecase " ignore case when searching
  set smartcase " ignore case if search pattern is all lowercase, case-sensitive otherwise
  set backspace=indent,eol,start " make that backspace key work the way it should

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
  set cursorline  " highlight current line
  set showmatch   " show matching brackets
  set hlsearch    " highlight search terms
  set incsearch   " show search matches as you type
  set magic       " For regular expressions turn magic on

  set list
  set listchars=tab:+-,trail:.,extends:# " show tabs and trailing whitespace

  set report=0 " tell us when anything is changed via :...

  set showcmd " show the command being typed

  set scrolloff=5      " Number of lines from vertical edge to start scrolling
  set sidescrolloff=5  " Number of cols from horizontal edge to start scrolling
  set sidescroll=1     " Number of cols to scroll at a time
" }

" Custom Mappings {
  " go to middle of current line
  map gm :call cursor(0, virtcol('$')/2)<CR> 

  " Mappings to access buffers (don't use "\p" because a
  " delay before pressing "p" would accidentally paste).
  " \l       : list buffers
  " \p \n \g : go previous/next/last-used
  " \1 \2 \3 : go to buffer 1/2/3 etc
  " nnoremap <C-l> <ESC>:ls<CR>
  nnoremap <C-p> <ESC>:bp<CR>
  nnoremap <C-n> <ESC>:bn<CR>
  nnoremap <C-g> <ESC>:e#<CR>
  " nnoremap <C-1> <ESC>:1b<CR>
  " nnoremap <C-2> <ESC>:2b<CR>
  " nnoremap <C-3> <ESC>:3b<CR>
  " nnoremap <C-4> <ESC>:4b<CR>
  " nnoremap <C-5> <ESC>:5b<CR>
  " nnoremap <C-6> <ESC>:6b<CR>
  " nnoremap <C-7> <ESC>:7b<CR>
  " nnoremap <C-8> <ESC>:8b<CR>
  " nnoremap <C-9> <ESC>:9b<CR>
  " nnoremap <C-0> <ESC>:10b<CR>

  " It's useful to show the buffer number in the status line.
  " set laststatus=2
  " set statusline=%02n:%<%f\ %h%m%r%=%-14.(%l,%c%V%)\ %P

  " Reselect visual block after indent/outdent
  " vnoremap < <gv
  " vnoremap > >gv

  " Make Y behave like other capitals
  map Y y$

  " Improve up/down movement on wrapped lines
  nnoremap j gj
  nnoremap k gk

  " Use tab for autocompletion
  function! SuperTab()
    if (strpart(getline('.'),col('.')-2,1)=~'^\W\?$')
      return "\<Tab>"
    else
      return "\<C-n>"
    endif
  endfunction
  imap <Tab> <C-R>=SuperTab()<CR>

  " Jump to start/end of line
  noremap H ^
  noremap L $
" }

" Plugins {
  " Vim Powerline Customizations
  " let g:Powerline_symbols = 'fancy' " see fancy symbols
  call Pl#Theme#RemoveSegment('fugitive:branch')
  call Pl#Theme#RemoveSegment('scrollpercent')

  " open NERDtree automatically
  " autocmd VimEnter * NERDTree

  " augroup vimrc
  "   autocmd!
  "   autocmd GuiEnter * set columns=120 lines=70 number
  " augroup END
" }
