set fileencoding=utf-8
set encoding=utf-8
set termencoding=utf-8


" set viminfo is enabled by default so this should not be necessary
" set viminfo='10,\"100,:20,%,n~/.viminfo

function! ResCur()
  if line("'\"") <= line("$")
    normal! g`"
    return 1
  endif
endfunction

augroup resCur
  autocmd!
  autocmd BufWinEnter * call ResCur()
augroup END

