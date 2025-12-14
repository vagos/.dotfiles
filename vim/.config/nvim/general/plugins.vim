call plug#begin('~/.config/nvim/autoload/plugged')

" Libraries
Plug 'nvim-lua/plenary.nvim'

" Language Specific
Plug 'sheerun/vim-polyglot'
Plug 'urbit/hoon.vim'
Plug 'zk-org/zk-nvim'
Plug 'rkaminsk/vim-syntax-clingo'
Plug 'kaarmu/typst.vim'

" LSP Support
Plug 'williamboman/mason.nvim'
Plug 'williamboman/mason-lspconfig.nvim'
Plug 'neovim/nvim-lspconfig'

" Autocompletion
Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'saadparwaiz1/cmp_luasnip'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-nvim-lua'
Plug 'hrsh7th/cmp-nvim-lsp-signature-help'

" Inject LSP Diagnostics
Plug 'nvimtools/none-ls.nvim'

"  Snippets
Plug 'L3MON4D3/LuaSnip'
Plug 'rafamadriz/friendly-snippets'

" Treesitter
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'nvim-treesitter/nvim-treesitter-textobjects'
Plug 'nvim-treesitter/nvim-treesitter-context'

 " Colorschemes
Plug 'erik-j-d/lightline-paper'
Plug 'junegunn/seoul256.vim'
Plug 'nanotech/jellybeans.vim'

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

" Root directory
Plug 'airblade/vim-rooter'

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

"" Coerce
Plug 'gregorias/coerce.nvim'

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

" Visual Multi
Plug 'mg979/vim-visual-multi', {'branch': 'master'}

" Move lines
Plug 'matze/vim-move'

" Scratchpad
Plug 'metakirby5/codi.vim'

" Spelling
Plug 'psliwka/vim-dirtytalk', { 'do': ':DirtytalkUpdate' }

call plug#end()

for file in split(glob("$HOME/.config/nvim/specific/*"), '\n')
  execute 'source' file
endfor
