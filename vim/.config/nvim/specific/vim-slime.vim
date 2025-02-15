let g:slime_target = "neovim"

xmap <Leader>cs <Plug>SlimeRegionSend
nmap <Leader>cs <Plug>SlimeParagraphSend

nmap <Leader>cn :vsplit<CR> :terminal<CR> :echo &channel<CR>
