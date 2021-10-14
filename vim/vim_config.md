# Vim
## Vim-plug
- [VimPlug github repo](https://github.com/junegunn/vim-plug)
- a vim plugin manager of my choice
- the ultimate tool to install plugins to vim
- install by executing following:
```
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```
- to install plugins, first add this block to ```.vimrc```:
```viml
call plug#begin()
" Place plugins inside this block
" Example:
Plug 'preservim/nerdtree'
call plug#end()
```
- then save and source your ```.vimrc``` by executing following:
```
:w
:so %
```
- ...and install plugins:
```
:PlugInstall
```

## Airline
- [Vim-airline github repo](https://github.com/vim-airline/vim-airline)
- vim powerline derivate
### 1. Install vim-airline plugin
- put 
### Install airline fonts
- in order for the airline to display correctly, you have to install airline fonts
- first, download [this repo](https://github.com/powerline/fonts) as ZIP
- unzip it, and run the ```install.sh``` script:
```
cd ~/Downloads
unzip fonts-master.zip
cd fonts-master
./install.sh
```
- you can then delete the ZIP and fonts-master folder
