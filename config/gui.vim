"-------gui setting------
set winaltkeys=no
set macmeta
set guioptions-=r
set guioptions-=L
set guioptions-=m
set guioptions-=T
set guioptions-=e

if(has("win32") || has("win64"))
    set linespace=8 "6 8
    set guifont=Hack:h12 "Consolas Fira_Code Hack
    set renderoptions=type:directx,renmode:5,taamode:1 "启用directx 渲染
    autocmd GUIEnter * simalt ~x "启动最大化
elseif(has("mac"))
    set linespace=5
    set guifont=Hack:h16
elseif(has("unix"))
    set linespace=5
    set guifont=Fira_Code:h16
endif
