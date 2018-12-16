if [ -f "$HOME/.zshrc" ]; then
    echo "source $HOME/.vim/econfig/init.sh" >> $HOME/.zshrc
fi

if [ -d "$HOME/.config" ]; then
    ln -s ~/.vim ~/.config/nvim
fi

ln -s ~/.vim/econfig/.tmux.conf ~/.tmux.conf
