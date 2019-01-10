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
    set linespace=0 "6 8
    set guifont=Hack:h12 "Consolas Fira_Code Hack
    set renderoptions=type:directx,renmode:5,taamode:1 "启用directx 渲染
    autocmd GUIEnter * simalt ~x "启动最大化
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

