" Vim Plug
call plug#begin('~/.config/nvim/autoload/plugged')

" Autocompletion Plugin - CoC 
" Plug 'neoclide/coc.nvim', {'branch': 'release'}

" LSP Server
Plug 'neovim/nvim-lspconfig'

" Completion 
Plug 'hrsh7th/nvim-cmp' 
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'quangnguyen30192/cmp-nvim-ultisnips'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-nvim-lsp-signature-help'

" Treesitter
" Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

 " Colorschemes
Plug 'itchyny/landscape.vim'

" Colorize colors in text.
Plug 'chrisbra/colorizer'

" Vim Wiki
Plug 'vimwiki/vimwiki', { 'branch': 'dev' }

" Status Bar Plugin
Plug 'itchyny/lightline.vim'

" Surround stuff
Plug 'tpope/vim-surround'

" Polyglot
Plug 'sheerun/vim-polyglot'

" Snippets
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'

" Dev Icons
Plug 'ryanoasis/vim-devicons'

" Allignment 
Plug 'godlygeek/tabular'

" File navigation
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" Rooter
Plug 'airblade/vim-rooter'

" Useful Pair-Binds
Plug 'tpope/vim-unimpaired'

" Repeat 
Plug 'tpope/vim-repeat'

" REPL
" Plug 'jpalardy/vim-slime'

call plug#end()

" source $HOME/.config/nvim/plugin-settings/coc.vim
source $HOME/.config/nvim/plugin-settings/lightline.vim
source $HOME/.config/nvim/plugin-settings/vimwiki.vim
source $HOME/.config/nvim/plugin-settings/vimspector.vim
source $HOME/.config/nvim/plugin-settings/polyglot.vim
source $HOME/.config/nvim/plugin-settings/fcitx.vim
source $HOME/.config/nvim/plugin-settings/vim-slime.vim
source $HOME/.config/nvim/plugin-settings/rooter.vim
source $HOME/.config/nvim/plugin-settings/fzf.vim
source $HOME/.config/nvim/plugin-settings/lsp.lua
" source $HOME/.config/nvim/plugin-settings/treesitter.lua
