if exists("g:gui_vim")
    finish
endif
let g:gui_vim = 1
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

"window control
noremap <m-h> <c-w>h
noremap <m-l> <c-w>l
noremap <m-j> <c-w>j
noremap <m-k> <c-w>k
inoremap <m-h> <esc><c-w>h
inoremap <m-l> <esc><c-w>l
inoremap <m-j> <esc><c-w>j
inoremap <m-k> <esc><c-w>k

"terminal control
if exists(':terminal')
    tnoremap <m-h> <c-w>h
    tnoremap <m-l> <c-w>l
    tnoremap <m-j> <c-w>j
    tnoremap <m-k> <c-w>k
    tnoremap <m-q> <c-\><c-n>
endif
