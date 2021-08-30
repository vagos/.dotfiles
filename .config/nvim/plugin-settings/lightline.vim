let g:lightline = {
      \ 'colorscheme': 'landscape',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'readonly', 'filename', 'modified' ] ],
      \   'right': [ [ 'lineinfo' ],
      \              [ 'percent' ],
      \              [ 'filetype', 'fileicon' ] ]
      \ },
      \ 'component_function': {
      \   'fileicon': 'DevIcon'
      \ },
      \ 'tab_component_function': {
      \   'tabnum': 'TabDevIcons',      
      \ },
      \ }

function! TabDevIcons(n)
  let l:bufnr = tabpagebuflist(a:n)[tabpagewinnr(a:n) - 1]
  return WebDevIconsGetFileTypeSymbol(bufname(l:bufnr))
endfunction


function! DevIcon()
  return WebDevIconsGetFileTypeSymbol(bufname(bufnr("%")))
endfunction
