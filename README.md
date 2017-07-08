# Sergey Gavruk Vim Configuration

#### Install
* Wipe out your `~/.vimrc` file and `~/.vim` directory (back up if you wish)
* `git clone https://github.com/gavruk/vim-config.git ~/.vim`
* `ln -s ~/.vim/.vimrc ~/.vimrc`
* `ln -s /Applications/MacVim.app/Contents/bin/mvim /usr/local/bin/mvim`
* `brew install ctags cmake ack`
* Start Vim
* Run `:PlugInstall`
* Run `:GoInstallBinaries`


#### Update
* Run `:PlugUpdate`

#### Dependencies

* ctrp: [Ctags](http://ctags.sourceforge.net/)
* ack.vim: [Ack](http://beyondgrep.com/)
* YouCompleteMe: [Python](https://www.python.org/)
* Ctags support for go: [Gotags](https://github.com/jstemmer/gotags)
