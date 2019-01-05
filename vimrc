let g:is_win=0
let g:is_mac=0
let g:is_lin=0

if has('mac')
    let g:is_mac=1
elseif has('unix')
    let g:islin=1
elseif has('win64')
    let g:is_win=1
endif

exec 'source' '~/.vim/config/basic.vim'
exec 'source' '~/.vim/config/mappings.vim'
exec 'source' '~/.vim/config/schemeselect.vim'
exec 'source' '~/.vim/config/plugins.vim'
exec 'source' '~/.vim/config/autofun.vim'

if has("gui_running")
    exec 'source' '~/.vim/config/gui.vim'
endif
