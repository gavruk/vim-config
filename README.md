# Sergey Gavruk Vim Configuration

#### Install
* Wipe out your `~/.vimrc` file and `~/.vim` directory (back up if you wish)
* `git clone https://github.com/gavruk/vim-config.git ~/.vim`
* `cd ~/.vim`
* `git submodule update --init --recursive`
* `ln ~/.vim/vimrc ~/.vimrc`
* Start Vim

#### Dependencies

* ctrp: [Ctags](http://ctags.sourceforge.net/)
* ack.vim: [Ack](http://beyondgrep.com/)
* YouCompleteMe: [Python](https://www.python.org/)
* Ctags support for go: [Gotags](https://github.com/jstemmer/gotags)

#### Update submodules

`sh update-submodules.sh`


#### Installing [YouCompleteMe](http://valloric.github.io/YouCompleteMe/)

* Install CMake

Compiling YCM **with** semantic support for C-family languages:

    cd ~/.vim/bundle/YouCompleteMe
    ./install.sh --clang-completer

Compiling YCM **without** semantic support for C-family languages:

    cd ~/.vim/bundle/YouCompleteMe
    ./install.sh

If you want semantic C# support, you should add `--omnisharp-completer` to the
install script as well.
