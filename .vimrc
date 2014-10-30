set nocompatible " be iMproved
filetype off     " required!

" Plugins {
  set rtp+=~/.vim/bundle/vundle/
  call vundle#rc()

  " let Vundle manage Vundle
  Plugin 'gmarik/vundle'

  " Brief help
  " :PluginList          - list configured bundles
  " :PluginInstall(!)    - install(update) bundles
  " :PluginSearch(!) foo - search(or refresh cache first) for foo
  " :PluginClean(!)      - confirm(or auto-approve) removal of unused bundles
  "
  " see :h vundle for more details or wiki for FAQ
  " NOTE: comments after Plugin command are not allowed..

  " File navigation plugins
  " Plugin 'kien/ctrlp.vim'
  Plugin 'git://github.com/scrooloose/nerdtree.git'
  Plugin 'majutsushi/tagbar'
  Plugin 'git://github.com/vim-scripts/minibufexpl.vim.git'
    let g:miniBufExplMapWindowNavVim = 1
    let g:miniBufExplMapWindowNavArrows = 1
    let g:miniBufExplMapCTabSwitchBufs = 1
    let g:miniBufExplModSelTarget = 1

  Plugin 'git://github.com/vim-scripts/BufOnly.vim.git'
  Plugin 'git://github.com/Lokaltog/vim-easymotion.git'

  Plugin 'git://github.com/Lokaltog/vim-powerline.git'
    " let g:Powerline_symbols = 'fancy' " see fancy symbols
    call Pl#Theme#RemoveSegment('fugitive:branch')
    call Pl#Theme#RemoveSegment('scrollpercent')

  " Plugin 'bling/vim-airline'
  "   let g:airline_theme='luna'
  "   let g:airline_powerline_fonts=1


  " file search
  Plugin 'git://github.com/rking/ag.vim.git'
    nmap <Leader>f :Ack<Space>

  " Syntax highlighting & language support
  Plugin 'git://github.com/vim-scripts/ruby.vim.git'

  Plugin 'Yggdroot/indentLine'
    let g:indentLine_color_term = 236
    let g:indentLine_indentLevel = 50
    let g:indentLine_faster = 1

  Plugin 'tpope/vim-markdown'
  Plugin 'tpope/vim-surround'
  Plugin 'tpope/vim-cucumber'
  Plugin 'tpope/vim-rails'
  Plugin 'tpope/vim-haml'
  Plugin 'nono/vim-handlebars'

  " Misc
  Plugin 'tpope/vim-commentary'
  Plugin 'tpope/vim-repeat'

  " colorschemes
  Plugin 'altercation/vim-colors-solarized'
" }


" General {
  let &t_Co=256
  filetype plugin indent on     " required!
  syntax on

  set viminfo^=! " Add recently accessed projects menu (project plugin)

  set encoding=utf-8 fileencoding=utf-8 termencoding=utf-8 " saving and encoding
  set regexpengine=1 " force old regexpengine (fixes slow syntax highlighting)

  set clipboard+=unnamed " Yanks go on clipboard instead.
  set history=1000 " Number of things to remember in history.
  set undolevels=1000 " use many muchos levels of undo
  set autowrite  " Writes on make/shell commands
  set ruler  " show cursor position in status bar
  set ai  " Set auto-indenting on for programming
  set number  " Line numbers on
  set timeoutlen=250  " Time to wait after ESC (default causes an annoying delay)

  set nowildignorecase
  set nofileignorecase
  set wildmenu  " Turn on the wildmenu
  set wildmode=list:longest,full
  set hidden   " A buffer becomes hidden when it is abandoned
  " set ttyfast

  set splitright " open split window to the right (default: left)
  " set splitbelow " open split window below (default: above)

  " set foldmethod=indent
  set wrap  " Line wrapping on
  let &showbreak = "↳ "

  set nobackup nowritebackup noswapfile " disable Backups & Files
  set tabstop=2 softtabstop=2 shiftwidth=2 expandtab " use 2 spaces for tabs

  set mouse=a " use mouse everywhere
  set mousemodel=popup                                      " right-click pops up context menu

  set ignorecase " ignore case when searching
  set smartcase " ignore case if search pattern is all lowercase, case-sensitive otherwise
  set backspace=indent,eol,start " make that backspace key work the way it should
" }

" Vim UI {
  set background=dark

  " solarized options 
  let g:solarized_termcolors = 256
  let g:solarized_visibility = "high"
  let g:solarized_contrast = "high"
  colorscheme solarized

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
  set textwidth=0                                          " show a vertical line at the 79th character

  " let &colorcolumn=join(range(81,999),",")
  " override some highlight settings (turn off stupid italics in Molokai)
  " highlight ColorColumn  ctermbg=235 guibg=#2c2d27
  " highlight CursorLine   ctermbg=235 guibg=#2c2d27
  " highlight CursorColumn ctermbg=235 guibg=#2c2d27
  highlight DiffText     gui=none
  highlight Macro        gui=none
  highlight SpecialKey   gui=none
  highlight Special      gui=none
  highlight StorageClass gui=none
  highlight Tag          gui=none
" }


" Custom Mappings {
  " different leader key
  nmap <leader> ,

  " jj acts as Escape
  inoremap jj <ESC>

  " Mappings to access buffers (don't use "\p" because a
  " delay before pressing "p" would accidentally paste).
  " \l       : list buffers
  " \p \n \g : go previous/next/last-used
  " \1 \2 \3 : go to buffer 1/2/3 etc
  " nnoremap <C-l> <ESC>:ls<CR>
  nnoremap <C-p> <ESC>:bp<CR>
  nnoremap <C-n> <ESC>:bn<CR>
  nnoremap <C-g> <ESC>:e#<CR>

  " It's useful to show the buffer number in the status line.
  set laststatus=2 " always show the statusline
  " set statusline=%02n:%<%f\ %h%m%r%=%-14.(%l,%c%V%)\ %P

  " Reselect visual block after indent/outdent
  " vnoremap < <gv
  " vnoremap > >gv

  " Jump to start/end of line
  noremap H ^
  noremap L $

  " Make Y behave like other capitals
  map Y y$

  " Improve up/down movement on wrapped lines
  nnoremap j gj
  nnoremap k gk

  " Move cursor when in insert mode
  imap <C-h> <C-o>h
  imap <C-j> <C-o>j
  imap <C-k> <C-o>k
  imap <C-l> <C-o>l

  " Use tab for autocompletion
  function! SuperTab()
    if (strpart(getline('.'),col('.')-2,1)=~'^\W\?$')
      return "\<Tab>"
    else
      return "\<C-n>"
    endif
  endfunction
  imap <Tab> <C-R>=SuperTab()<CR>
" }

