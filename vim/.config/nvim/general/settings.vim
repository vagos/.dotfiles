scriptencoding utf-8
syntax enable             " Enables syntax highlighing
set hidden                " Required to keep multiple buffers open multiple buffers
set nowrap                " Display long lines as just one line
set encoding=utf-8        " The encoding displayed
set pumheight=10          " Makes popup menu smaller
set fileencoding=utf-8    " The encoding written to file
set cmdheight=1           " Regular space for displaying messages
set iskeyword+=-          " treat dash separated words as a word text object
set iskeyword+=_          " treat underscore separated words as a word text object
set mouse=a               " Enable your mouse
set splitbelow            " Horizontal splits will automatically be below
set splitright            " Vertical splits will automatically be to the right
set t_Co=256              " Support 256 colors
set conceallevel=0        " So that I can see `` in markdown files
set smarttab              " Makes tabbing smarter will realize you have 2 vs 4
set smartindent           " Makes indenting smart
set expandtab             " Converts tabs to spaces
set laststatus=2          " Always display the status line
set number                " Line numbers
set background=dark       " tell vim what the background color looks like
set showtabline=2         " Always show tabs
set nobackup              " This is recommended by coc
set nowritebackup         " This is recommended by coc
set updatetime=300        " Faster completion
set timeoutlen=500        " By default timeoutlen is 1000 ms
set formatoptions-=cro    " Stop newline continution of comments
set clipboard=unnamedplus " Copy paste between vim and everything else
set autochdir             " Your working directory will always be the same as your working directory
set noswapfile            " No more swap files
set spelllang=en,el,programming
set ignorecase
set smartcase
set incsearch
set shell=/bin/zsh

let g:netrw_browsex_viewer="xdg-open"

filetype on
filetype indent on
filetype plugin on

autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

set pumheight=4

if has('termguicolors')
  set termguicolors
endif
