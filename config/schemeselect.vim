"-------scheme select-------
if !has('gui_running')
    set t_Co=256
endif

colorscheme gruvbox "desert gruvbox

set background=dark

nmap <leader>vd :set background=dark<cr>
nmap <leader>vl :set background=light<cr>

if !has('gui_running') && has('mac') || exists('$TMUX')
    hi Normal ctermbg=NONE
    hi NonText ctermbg=NONE
endif
