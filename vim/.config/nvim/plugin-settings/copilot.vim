let b:copilot_enabled = v:false

imap <silent><script><expr> <C-J> copilot#Accept("\<CR>")
let g:copilot_no_tab_map = v:true

function! ToggleCopilot()
  if exists("b:copilot_enabled")
    let b:copilot_enabled = !b:copilot_enabled
  else
    let b:copilot_enabled = v:true
  endif
    
  if b:copilot_enabled
    :Copilot enable
    echo "Copilot enabled."
  else
    :Copilot disable
    echo "Copilot disabled."
   endif

endfunction

" map ToggleCopilot to F10
nnoremap <silent> <F10> :call ToggleCopilot()<cr>
