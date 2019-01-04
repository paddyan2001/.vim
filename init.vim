"In Windows copy this file to ~AppData\Local\nvim
"In Mac Linux copy to ~/.config

set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath = &runtimepath
source ~/.vim/vimrc
