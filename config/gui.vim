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
    set guifont=Hack:h12 "Consolas Fira_Code Hack
    set renderoptions=type:directx,renmode:5,taamode:1 "启用directx 渲染
"    autocmd GUIEnter * simalt ~x "启动最大化
    cd ~/code/py
endif
