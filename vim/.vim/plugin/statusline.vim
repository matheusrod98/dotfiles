set noshowmode

let g:currentMode={
      \ 'n'          :'NORMAL',
      \ 'no'         :"OPERATOR PENDING",
      \ 'nov'        :"OPERATOR PENDING",
      \ 'noV'        :"OPERATOR PENDING",
      \ 'no"\<C-v>"' :"OPERATOR PENDING",
      \ 'niI'        :'NORMAL',
      \ 'niR'        :'NORMAL',
      \ 'niV'        :'NORMAL',
      \ 'v'          :'VISUAL',
      \ 'V'          :"V-LINE",
      \ "\<C-v>"     :"V-BLOCK",
      \ 's'          :'SELECT',
      \ 'S'          :"S-LINE",
      \ "\<C-s>"     :"S-BLOCK",
      \ 'i'          :'INSERT',
      \ 'ic'         :'INSERT',
      \ 'ix'         :'INSERT',
      \ 'R'          :'REPLACE',
      \ 'Rc'         :'REPLACE',
      \ 'Rv'         :"V-REPLACE",
      \ 'Rx'         :'REPLACE',
      \ 'c'          :'COMMAND',
      \ 'cv'         :'EX MODE',
      \ 'ce'         :'EX MODE',
      \ 'r'          :'PROMPT',
      \ 'rm'         :'MORE',
      \ 'r?'         :'CONFIRM',
      \ '!'          :'SHELL',
      \ 't'          :'TERMINAL',
      \}

highlight TabLineSel gui=bold cterm=bold

set statusline=%#TabLineSel#
set statusline+=\ %{g:currentMode[mode()]}
set statusline+=\ %#TabLine#
set statusline+=\ %F
set statusline+=\ \[%{FugitiveHead()}\]
set statusline+=\ %m\ %r 
set statusline+=\ %=
set statusline+=\ %y\ %{&fileencoding?&fileencoding:&encoding}/%{&fileformat}
set statusline+=\ %#TabLineSel#
set statusline+=\ %P\ %l:%c
set statusline+=\ 
