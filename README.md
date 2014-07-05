# Sergey Gavruk Vim Configuration

#### Install
* Wipe out your `~/.vimrc` file and `~/.vim` directory (back up if you wish)
* `git clone https://github.com/gavruk/vim-config.git ~/.vim`
* `cd ~/.vim`
* `git submodule update --init --recursive`
* `ln ~/.vim/vimrc ~/.vimrc`
* Start Vim

#### Requirements

* ctrp: http://ctags.sourceforge.net/
* ack.vim: http://beyondgrep.com/
* Python (for YouCompleteMe)

#### Update submodules

`sh update-submodules.sh`


#### Installing YouCompleteMe

* Install CMake

Compiling YCM **with** semantic support for C-family languages:

    cd ~/.vim/bundle/YouCompleteMe
    ./install.sh --clang-completer

Compiling YCM **without** semantic support for C-family languages:

    cd ~/.vim/bundle/YouCompleteMe
    ./install.sh

If you want semantic C# support, you should add `--omnisharp-completer` to the
install script as well.
