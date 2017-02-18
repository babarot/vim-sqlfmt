" command! -nargs=* -range=% -complete=file SQLFmt call <SID>sqlfmt(<f-args>)

if !exists('g:sqlfmt_command')
  let g:sqlfmt_command = 'sqlfmt'
endif

if !exists('g:sqlfmt_options')
  let g:sqlfmt_options = ''
endif

command! -buffer -nargs=* -complete=file SQLFmt call sqlfmt#run(<f-args>)
