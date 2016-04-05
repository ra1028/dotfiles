" use emacs key bind during command mode and a movement of insert mode
" start of line
cnoremap <c-a> <Home>
inoremap <c-a> <Home>
" back one character
cnoremap <c-b> <Left>
inoremap <c-b> <Left>
" delete character under cursor
cnoremap <c-d> <Del>
inoremap <c-d> <Del>
" end of line
cnoremap <c-e> <End>
inoremap <c-e> <End>
" forward one character
cnoremap <c-f> <Right>
inoremap <c-f> <Right>
" recall newer command-line
cnoremap <c-n> <Down>
inoremap <c-n> <Down>
" recall previous (older) command-line
cnoremap <c-p> <Up>
inoremap <c-p> <Up>
" delete character backward
cnoremap <c-h> <BS>
" insert mode
inoremap <c-c> <esc>
" kill line
inoremap <c-k> <right><esc>Da

