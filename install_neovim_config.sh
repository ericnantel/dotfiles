#!/bin/sh

# deinit submodules ?
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

os=$(uname -o)
if [[ "$os" == 'Msys' ]]; then
	# make directory ~/AppData/Local/nvim
	mkdir -p ~/AppData/Local/nvim

	# copy .config/nvim to ~/AppData/Local/nvim
	cp -rp .config/nvim/* ~/AppData/Local/nvim
else
	# make directory ~/.config/nvim
	mkdir -p ~/.config/nvim

	# copy .config/nvim to ~/.config/nvim
	cp -rp .config/nvim/* ~/.config/nvim
fi

# autoload ?
#
# vim-plug ?
