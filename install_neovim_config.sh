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

# copy .clang-format to ~/.clang-format
#cp .clang-format ~/.clang-format
#source ~/.clang-format

#TODO: .tmux/config

os=$(uname -o)
if [ "$os" = 'Msys' ]; then
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

