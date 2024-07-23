"let b:copilot_enabled = v:false

imap <silent><script><expr> <C-J> copilot#Accept("\<CR>")
let g:copilot_no_tab_map = v:true

function! CopilotEnable()
    :Copilot enable
    echo "Copilot enabled."
endfunction

" map ToggleCopilot to F10
nnoremap <silent> <F10> :call CopilotEnable()<cr>
