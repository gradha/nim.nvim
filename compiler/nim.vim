" Vim compiler file
" Compiler: Nim
" Author:   Leorize

if exists("current_compiler")
  finish
endif

let current_compiler = "nim"

CompilerSet errorformat=
      \%f(%l\\,\ %c)\ %trror:\ %m,
      \%f(%l\\,\ %c)\ %tarning:\ %m\ [%s],
      \%A%f(%l\\,\ %c)\ Hint:\ %m\ [%s],
      \%I%f(%l\\,\ %c)\ %m,
      \%-IHint:\ %m,
      \%-ICC:\ %m
CompilerSet makeprg=nim\ c\ --listFullPaths:on\ $*\ %
