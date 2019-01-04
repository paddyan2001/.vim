exec 'source' '~/.vim/config/basic.vim'
exec 'source' '~/.vim/config/mappings.vim'
exec 'source' '~/.vim/config/schemeselect.vim'
exec 'source' '~/.vim/config/plugins.vim'
exec 'source' '~/.vim/config/autofun.vim'
"exec 'source' '~/.vim/config/tmux.vim'

if has("gui_running")
    exec 'source' '~/.vim/config/gui.vim'
endif
