" some nice configuration: https://www.chiarulli.me/Neovim/08-fzf/

map <leader>f :Files<cr>
nnoremap <leader>g :Rg<CR>

let $FZF_DEFAULT_OPTS = '--layout=reverse --info=inline'
let $FZF_DEFAULT_COMMAND="rg --files --hidden"
