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

# note sure why but the git folder is not copied properly..
# until then keep uncomment code below

# current directory ~/.vim/bundle/Vundle.vim
cd ~/.vim/bundle

# remove Vundle.vim
rm -rf Vundle.vim

# make directory Vundle.vim
mkdir -p Vundle.vim

# git clone Vundle
git clone https://github.com/VundleVim/Vundle.vim Vundle.vim