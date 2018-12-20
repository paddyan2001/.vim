"-------scheme select-------
colorscheme gruvbox

if has('gui_running')
    let time = strftime("%H")
    if time>18 || time<9
        set background=dark
    else
        set background=light
    endif
else
    set t_Co=256
    set background=dark
    if has('mac') || exists('$TMUX')
        hi Normal ctermbg=NONE
        hi NonText ctermbg=NONE
    endif
endif

nmap <leader>vd :set background=dark<cr>
nmap <leader>vl :set background=light<cr>
