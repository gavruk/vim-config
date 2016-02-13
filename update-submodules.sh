git submodule foreach git pull origin master
cd ~/.vim/bundle/youcompleteme
git submodule update --init --recursive
cd ~/.vim/bundle/youcompleteme
git submodule foreach git fetch
sh ./install.sh
cd ~/.vim/bundle/tern
npm install
cd ~/.vim

echo "Successfully Updated"
