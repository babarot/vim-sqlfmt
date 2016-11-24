vim-sqlfmt
===

A SQL formatter like GoFmt for vimmers

# Installation

Requirement:

- https://github.com/jackc/sqlfmt

```console
$ go get github.com/jackc/sqlfmt/cmd/sqlfmt
```

# Usage

```vim
:SQLFmt [files...]
```

By default `jackc/sqlfmt` is used, but if you want to use other formatter (e.g. [andialbrecht/sqlparse](https://github.com/andialbrecht/sqlparse)), set as follows:

```vim
let g:sqlfmt_command = "sqlformat"
let g:sqlfmt_options = "-r -k upper"
```

# License

MIT @ b4b4r07
