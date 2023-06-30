let g:slime_target = "neovim"

xmap <Leader>c <Plug>SlimeRegionSend
nmap <Leader>c <Plug>SlimeParagraphSend

nmap <Leader>cn :vsplit<CR> :terminal<CR> :echo &channel<CR>
