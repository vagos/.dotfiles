" let g:vimspector_enable_mappings = 'HUMAN'
nmap <leader>dd :call vimspector#Launch()<CR>

let g:vimspector_install_gadgets = [ 'vscode-cpptools']
