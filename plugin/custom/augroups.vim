

" === AUGROUPS ===


" Coding {{{
" python
augroup vimrc-python
  autocmd!
  autocmd FileType python setlocal cinwords=if,elif,else,for,while,try,except,finally,def,class,with
augroup END
" highlight whietspaces {{{
" http://vim.wikia.com/wiki/Highlight_unwanted_spaces
augroup extra-whitespace
    au BufNewFile,BufRead,InsertLeave * silent! match ExtraWhitespace /\s\+$/
    au InsertEnter * silent! match ExtraWhitespace /\s\+\%#\@<!$/
augroup END
" }}}


" wrapping for txt {{{
if !exists('*s:setupWrapping')
  function s:setupWrapping()
    set wrap
    set wm=2
    set textwidth=79
  endfunction
endif

augroup vimrc-wrapping
  autocmd!
  autocmd BufRead,BufNewFile *.txt call s:setupWrapping()
augroup END
" }}}

" Misc {{{
augroup mark-fold
  autocmd!
  autocmd FileType vim,zsh setlocal foldmethod=marker foldlevel=0
augroup END
" }}}
