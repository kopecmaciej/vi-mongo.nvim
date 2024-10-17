scriptencoding utf-8

if exists('g:loaded_vi_mongo') | finish | endif

let s:save_cpo = &cpo
set cpo&vim

if has('nvim')
  command! -nargs=0 ViMongo lua require('vi-mongo').setup()
else
  echohl ErrorMsg
  echomsg "Vi Mongo requires Neovim"
  echohl None
endif

let g:loaded_vi_mongo = 1

let &cpo = s:save_cpo
unlet s:save_cpo

