vim-sqlfmt
==========

A plugin for SQL formatter like gofmt

## Installation

With [vim-plug](https://github.com/junegunn/vim-plug),

```vim
Plug 'b4b4r07/vim-sqlfmt'
```

Requirement:

Available plugins | Paste on your `.vimrc`
---|---
[jackc/sqlfmt](https://github.com/jackc/sqlfmt) | <pre>let g:sqlfmt_command = "sqlfmt"<br>let g:sqlfmt_options = ""</pre>
[andialbrecht/sqlparse](https://github.com/andialbrecht/sqlparse) | <pre>let g:sqlfmt_command = "sqlformat"<br>let g:sqlfmt_options = "-r -k upper"</pre>
... | ...

## Usage

Run `:w` to format automatically. If you set `g:sqlfmt_auto` to 0, this behavior will be disabled.

It can also be executed directly as follows:

```vim
:SQLFmt [files...]
```

## License

MIT

## Author

b4b4r07
