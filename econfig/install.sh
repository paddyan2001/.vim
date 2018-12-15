if [ -d "$HOME/.config" ]; then
    ln -s ~/.vim ~/.config/nvim
    ln -s ~/.vim/vimrc ~/.config/nvim/init.vim
fi
ln -s ~/.vim/econfig/.tmux.conf ~/.tmux.conf

