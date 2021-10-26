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

let g:gitBranch = ''

augroup UPDATE_GITBRANCH
    autocmd!
    autocmd BufEnter * :call UpdateGitBranch()
    autocmd ShellCmdPost * :call UpdateGitBranch()
    autocmd CmdwinLeave * :call UpdateGitBranch()
augroup END

function! UpdateGitBranch ()
    if (system ("git rev-parse --is-inside-work-tree 2>/dev/null | tr -d '\n'") == "true")
        let g:gitBranch = system ("git branch --show-current 2>/dev/null | tr -d '\n'")
        set statusline=%#TabLineSel#
        set statusline+=\ %{g:currentMode[mode()]}
        set statusline+=\ %#TabLine#
        set statusline+=\ %{g:gitBranch}
        set statusline+=\ %#StatusLineNC#
        set statusline+=\ %F\ %m\ %r
        set statusline+=\ %=
        set statusline+=\ %#TabLine#
        set statusline+=\ %{&fileencoding?&fileencoding:&encoding}/%{&fileformat}\ %y
        set statusline+=\ %#TabLineSel#
        set statusline+=\ %P\ %l:%c
        set statusline+=\ 
    else
        set statusline=%#TabLineSel#
        set statusline+=\ %{g:currentMode[mode()]}
        set statusline+=\ %#StatusLineNC#
        set statusline+=\ %F\ %m\ %r
        set statusline+=\ %=
        set statusline+=\ %#TabLine#
        set statusline+=\ %{&fileencoding?&fileencoding:&encoding}/%{&fileformat}\ %y
        set statusline+=\ %#TabLineSel#
        set statusline+=\ %P\ %l:%c
        set statusline+=\ 
    endif
endfunction
