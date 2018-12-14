"-------scheme select-------
set t_Co=256
set term=$TERM

colorscheme gruvbox "desert gruvbox

set background=dark

nmap <leader>vd :set background=dark<cr>
nmap <leader>vl :set background=light<cr>

if has('gui')==0 && has('mac') || exists('$TMUX')
    hi Normal ctermbg=NONE
    hi NonText ctermbg=NONE
endif
