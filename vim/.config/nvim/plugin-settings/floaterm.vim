nnoremap <silent> <Leader>t :FloatermToggle<CR> 
tnoremap <silent> <Leader>t <C-\><C-n>:FloatermToggle<CR>
let g:floaterm_autoclose = 2
" Set floaterm window's background to black
hi Floaterm guibg=black
" Set floating window border line color to cyan, and background to orange
hi FloatermBorder guibg=orange guifg=cyan
let g:floaterm_wintype = 'float'
let g:floaterm_width = 0.8
let g:floaterm_height = 0.8
