#!/bin/sh

# deinit submodule ?
#git submodule deinit --all

# init and update submodules
git submodule init
git submodule update

# copy .bashrc to ~/.bashrc
cp .bashrc ~/.bashrc

#source ~/.bashrc

# copy .zshrc to ~/.zshrc
cp .zshrc ~/.zshrc

#source ~/.zshrc

# make directory ~/.config/nvim
mkdir -p ~/.config/nvim

# copy .config/nvim to ~/.config/nvim
cp -rp .config/nvim/* ~/.config/nvim

# autoload ?
#
# vim-plug ?
