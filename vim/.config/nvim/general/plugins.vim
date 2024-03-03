" Vim Plug
call plug#begin('~/.config/nvim/autoload/plugged')

" Libraries
Plug 'nvim-lua/plenary.nvim'

" LSP Support
Plug 'neovim/nvim-lspconfig'
Plug 'williamboman/mason.nvim'
Plug 'williamboman/mason-lspconfig.nvim'
Plug 'VonHeikemen/lsp-zero.nvim'

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

" Treesitter
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

 " Colorschemes
Plug 'itchyny/landscape.vim'
Plug 'yorickpeterse/vim-paper'
Plug 'erik-j-d/lightline-paper'

" Colorize colors in text.
Plug 'chrisbra/colorizer'

" Status Bar Plugin
Plug 'itchyny/lightline.vim'

" Surround stuff
Plug 'tpope/vim-surround'

" Dev Icons
Plug 'ryanoasis/vim-devicons'

" Allignment 
Plug 'godlygeek/tabular'

" Undo Tree
Plug 'mbbill/undotree'

" File navigation
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" Context
Plug 'nvim-treesitter/nvim-treesitter-context'

" Projects
Plug 'ahmedkhalf/project.nvim'

" Useful Pair-Binds
Plug 'tpope/vim-unimpaired'

" Repeat 
Plug 'tpope/vim-repeat'

" Motions
Plug 'justinmk/vim-sneak'

" Commenting
Plug 'tpope/vim-commentary'

" Abolish
Plug 'tpope/vim-abolish'

" REPL
Plug 'jpalardy/vim-slime'

" Transparent Background
Plug 'xiyaowong/nvim-transparent'

" Web DevIcons
Plug 'nvim-tree/nvim-web-devicons'

" Diagnostics
Plug 'folke/trouble.nvim'

" Git
Plug 'tpope/vim-fugitive'

" Copilot
Plug 'github/copilot.vim'

" Hex File editing
Plug 'rootkiter/vim-hexedit'

" Zoxide
Plug 'nanotee/zoxide.vim'

" Fun (ascii drawing)
Plug 'gyim/vim-boxdraw'
Plug 'jbyuki/venn.nvim'

" Language Specific
Plug 'sheerun/vim-polyglot'
Plug 'urbit/hoon.vim'
Plug 'vimwiki/vimwiki', { 'branch': 'dev' }

call plug#end()

source $HOME/.config/nvim/plugin/lightline.vim
source $HOME/.config/nvim/plugin/vimwiki.vim
source $HOME/.config/nvim/plugin/vimspector.vim
source $HOME/.config/nvim/plugin/vim-slime.vim
source $HOME/.config/nvim/plugin/project.lua
source $HOME/.config/nvim/plugin/fzf.vim
source $HOME/.config/nvim/plugin/copilot.vim
source $HOME/.config/nvim/plugin/treesitter.lua
source $HOME/.config/nvim/plugin/appearance.lua
source $HOME/.config/nvim/plugin/context.lua
source $HOME/.config/nvim/plugin/trouble.lua
source $HOME/.config/nvim/plugin/lsp.lua
source $HOME/.config/nvim/plugin/git.vim
source $HOME/.config/nvim/plugin/commentary.vim
source $HOME/.config/nvim/plugin/undotree.vim
" source $HOME/.config/nvim/plugin/polyglot.vim
