if !exists('g:sqlfmt_command')
  finish
endif

if !executable(g:sqlfmt_command) || !get(g:, 'sqlfmt_auto', 1)
  finish
endif

augroup SQLFmt
  au!
  autocmd BufWritePost *.sql call sqlfmt#run()
augroup END
