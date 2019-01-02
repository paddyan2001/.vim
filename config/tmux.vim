if exists("g:tmux_vim")
    finish
endif
let g:tmux_vim = 1
if exists('$TMUX')
    let &t_SI = "\<Esc>[3 q"
    let &t_EI = "\<Esc>[0 q"
else
    let &t_SI = "\<Esc>]50CursorShape=1\x7"
    let &t_EI = "\<Esc>]50CursorShape=0\x7"
endif
