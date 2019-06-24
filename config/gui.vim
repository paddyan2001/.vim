"-------gui setting------
set winaltkeys=no
set guioptions-=r
set guioptions-=L
set guioptions-=m
set guioptions-=T
set guioptions-=e

if g:is_mac
    set linespace=5
    set guifont=Hack:h16
elseif g:is_win
    set linespace=8
    set guifont=Fira\ Code\ Retina:h12 "Consolas Fira_Code Hack
endif
