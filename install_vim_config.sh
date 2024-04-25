#!/bin/sh

# init and update submodules
git submodule init
git submodule update

# copy .bashrc to ~/.bashrc
#cp .bashrc ~/.bashrc
#source ~/.bashrc

# copy .zshrc to ~/.zshrc
#cp .zshrc ~/.zshrc
#source ~/.zshrc

# copy .wezterm.lua to ~/.wezterm.lua
#cp .wezterm.lua ~/.wezterm.lua
#source ~/.wezterm.lua

# copy .vimrc to ~/.vimrc
cp .vimrc ~/.vimrc
#source ~/.vimrc

# copy .clang-format to ~/.clang-format
#cp .clang-format ~/.clang-format
#source ~/.clang-format

#TODO: .tmux/config

# make directory ~/.vim
mkdir -p ~/.vim

# copy .vim to ~.vim
cp -rp .vim/* ~/.vim

# make directory ~/.vim/autoload
mkdir -p ~/.vim/autoload

# copy vim-plug/plug.vim to ~/.vim/autoload/plug.vim
cp vim-plug/plug.vim ~/.vim/autoload/plug.vim

