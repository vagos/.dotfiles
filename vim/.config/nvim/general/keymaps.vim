" disabling some annoying keymaps

map <S-Up> <Nop>
map <S-Down> <Nop>
map <S-Left> <Nop>
map <S-Right> <Nop>

if &wildoptions =~ "pum"
    cnoremap <expr> <up> pumvisible() ? "<C-p>" : "\\<up>"
    cnoremap <expr> <down> pumvisible() ? "<C-n>" : "\\<down>"
endif

nnoremap <silent> <esc> :noh<cr>

vmap < <gv
vmap > >gv

" nnoremap n nzz
" nnoremap N Nzz

noremap Q !!sh<CR>

" Spell Check

set spelllang=en,el,engr

nnoremap <silent> <F6> :set spell!<cr>

command! SynStack echo map(synstack(line('.'), col('.')), 'synIDattr(v:val, "name")')
