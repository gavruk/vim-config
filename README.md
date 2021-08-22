# Sergey Gavruk Vim Configuration

#### Install
* Wipe out your `~/.vimrc` file and `~/.vim` directory (back up if you wish)
* `git clone https://github.com/gavruk/vim-config.git ~/.vim`
* `ln -s ~/.vim/.vimrc ~/.vimrc`
* Install [VimR](https://github.com/qvacua/vimr)
* `~/.config/nvim/init.vim` add
```
set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath=&runtimepath
source ~/.vimrc
```
* `~/.zshrc` add
```
alias vim="/Applications/MacVim.app/Contents/MacOS/Vim"
alias vimr="/Applications/VimR.app/Contents/Resources/vimr"
```
* Download patched font `https://github.com/ryanoasis/nerd-fonts/tree/master/patched-fonts/FiraCode/Regular/complete`
* `brew install fd`
* Start Vim
* Run `:PlugInstall`


#### Update
* Run `:PlugUpdate`
