syntax on

filetype on
set shiftwidth=2

set noerrorbells visualbell t_vb=
autocmd GUIEnter * set visualbell t_vb=

au BufNewFile,BufRead *.cu set ft=cu
au BufNewFile,BufRead *.cuh set ft=cu

set hlsearch

" Tell vim to remember certain things when we exit
"  '10  :  marks will be remembered for up to 10 previously edited files
"  "100 :  will save up to 100 lines for each register
"  :20  :  up to 20 lines of command-line history will be remembered
"  %    :  saves and restores the buffer list
"  n... :  where to save the viminfo files
set viminfo='10,\"100,:20,%,n~/.viminfo

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
