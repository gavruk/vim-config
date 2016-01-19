cd ~/.vim
git submodule update --init --recursive
ln ~/.vim/.vimrc ~/.vimrc
cd ~/.vim/bundle/youcompleteme
sh ./install.sh
cd ~/.vim/bundle/tern
npm install
mkdir ~/.vim/undo ~/.vim/temp ~/.vim/backup
cd ~/.vim

echo "Vim Config Successfully Installed"
