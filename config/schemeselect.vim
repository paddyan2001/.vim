"-------scheme select-------
set t_Co=256

colorscheme gruvbox "desert gruvbox

set background=dark

nmap <leader>vd :set background=dark<cr>
nmap <leader>vl :set background=light<cr>

if has('gui')==0
    hi Normal guibg=NONE ctermbg=NONE
    hi NonText guibg=NONE ctermbg=NONE
endif
