#!/bin/sh

# init and update submodules
git submodule init
git submodule update

# copy .vimrc to ~/.vimrc
cp .vimrc ~/.vimrc

# make directory ~/.vim
mkdir -p ~/.vim

# copy .vim to ~.vim
cp -rp .vim/* ~/.vim

# make directory ~/.vim/autoload
mkdir -p ~/.vim/autoload

# copy vim-plug/plug.vim to ~/.vim/autoload/plug.vim
cp vim-plug/plug.vim ~/.vim/autoload/plug.vim
