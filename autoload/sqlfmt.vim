function! sqlfmt#run(...) abort
  if g:sqlfmt_command ==# ''
    redraw
    echohl ErrorMsg | echomsg 'g:sqlfmt_command is not specified' | echohl None
    return
  endif
  if !executable(g:sqlfmt_command)
    redraw
    echohl ErrorMsg | echomsg printf('%s: command not found', g:sqlfmt_command) | echohl None
    return
  endif

  let files = len(a:000) > 0 ? a:000 : [expand('%')]
  let files = map(files, 'shellescape(expand(v:val))')
  let lines = systemlist(printf(
              \ '%s %s %s',
              \ g:sqlfmt_command, g:sqlfmt_options, join(files, ' ')
              \ ))

  if v:shell_error == 0
    let pos = getcurpos()
    silent! %d _
    call setline(1, lines)
    call setpos('.', pos)
  else
    cexp lines
  endif
  if len(getqflist()) > 0
    copen | cc
  else
    cclose
  endif
endfunction
