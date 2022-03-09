" Vim Plug
call plug#begin('~/.config/nvim/autoload/plugged')

" Autocompletion Plugin - CoC 
Plug 'neoclide/coc.nvim', {'branch': 'release'}

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
Plug 'honza/vim-snippets'

" Dev Icons
Plug 'ryanoasis/vim-devicons'

" Allignment 
Plug 'godlygeek/tabular'

" fcitx support 
Plug 'lilydjwg/fcitx.vim'

" File navigation
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" REPL
" Plug 'jpalardy/vim-slime'

call plug#end()

source $HOME/.config/nvim/plugin-settings/coc.vim
source $HOME/.config/nvim/plugin-settings/lightline.vim
source $HOME/.config/nvim/plugin-settings/vimwiki.vim
source $HOME/.config/nvim/plugin-settings/vimspector.vim
source $HOME/.config/nvim/plugin-settings/polyglot.vim
source $HOME/.config/nvim/plugin-settings/fcitx.vim
source $HOME/.config/nvim/plugin-settings/vim-slime.vim
source $HOME/.config/nvim/plugin-settings/fzf.vim
