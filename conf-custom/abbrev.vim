" abbrevations
cabbrev help vertical help

iabbrev todo TODO

inoreabbrev <expr> #!! "#!/usr/bin/env" . (empty(&filetype) ? '' : ' '.&filetype)
" ----------------------------------------------------------------------------

" Create a doc string - need the docstring file
" <date> will be replaced by current date YYYYMMDD format x2
inoreabbrev __dcstr <ESC>:r!cat ~/.config/nvim/tmpl/.docstring<CR>?<date><CR>ciW<C-R>=strftime('%Y%m%d')<CR><ESC>?<date><CR>ciW<C-R>=strftime('%Y%m%d')<CR>


iabbrev shrug ¯\_(ツ)_/¯
iabbrev tableflip (╯°□°）╯彡┻━┻

