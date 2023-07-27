" Vim Plug
call plug#begin('~/.config/nvim/autoload/plugged')

" LSP Support
Plug 'neovim/nvim-lspconfig'
Plug 'williamboman/mason.nvim'
Plug 'williamboman/mason-lspconfig.nvim'

" Autocompletion
Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'saadparwaiz1/cmp_luasnip'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-nvim-lua'
Plug 'hrsh7th/cmp-nvim-lsp-signature-help'

"  Snippets
Plug 'L3MON4D3/LuaSnip'
Plug 'rafamadriz/friendly-snippets'

Plug 'VonHeikemen/lsp-zero.nvim'

" Treesitter
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

 " Colorschemes
Plug 'itchyny/landscape.vim'
Plug 'RRethy/nvim-base16'

" Colorize colors in text.
Plug 'chrisbra/colorizer'

" Vim Wiki
Plug 'vimwiki/vimwiki', { 'branch': 'dev' }

" Status Bar Plugin
Plug 'itchyny/lightline.vim'

" Surround stuff
Plug 'tpope/vim-surround'

" Dev Icons
Plug 'ryanoasis/vim-devicons'

" Allignment 
Plug 'godlygeek/tabular'

" File navigation
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" Context
Plug 'nvim-treesitter/nvim-treesitter-context'

" Rooter
Plug 'airblade/vim-rooter'

" Useful Pair-Binds
Plug 'tpope/vim-unimpaired'

" Repeat 
Plug 'tpope/vim-repeat'

" Motions
Plug 'justinmk/vim-sneak'

" Commenting
Plug 'tpope/vim-commentary'

" REPL
Plug 'jpalardy/vim-slime'

" Transparent Background
Plug 'xiyaowong/nvim-transparent'

" Web DevIcons
Plug 'nvim-tree/nvim-web-devicons'

" Diagnostics
Plug 'folke/trouble.nvim'

" Copilot
Plug 'github/copilot.vim'

" Hex File editing
Plug 'rootkiter/vim-hexedit'

" Fun (ascii drawing)
Plug 'gyim/vim-boxdraw'
Plug 'jbyuki/venn.nvim'

" Language Specific
Plug 'urbit/hoon.vim'
call plug#end()

source $HOME/.config/nvim/plugin/lightline.vim
source $HOME/.config/nvim/plugin/vimwiki.vim
source $HOME/.config/nvim/plugin/vimspector.vim
source $HOME/.config/nvim/plugin/vim-slime.vim
source $HOME/.config/nvim/plugin/rooter.vim
source $HOME/.config/nvim/plugin/fzf.vim
source $HOME/.config/nvim/plugin/copilot.vim
source $HOME/.config/nvim/plugin/treesitter.lua
source $HOME/.config/nvim/plugin/appearance.lua
source $HOME/.config/nvim/plugin/context.lua
source $HOME/.config/nvim/plugin/lsp.lua
source $HOME/.config/nvim/plugin/trouble.lua
" source $HOME/.config/nvim/plugin/polyglot.vim
