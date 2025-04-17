#!/bin/sh

os=$(uname -o)

# init and update submodules
git submodule init
git submodule update

if [ "$os" = 'Msys' ]; then
	# make directory ~/AppData/Roaming/.emacs.d
	mkdir -p ~/AppData/Roaming/.emacs.d
	# copy .emacs.d/init.el to ~/AppData/Roaming/.emacs.d/init.el
	cp -rp .emacs.d/init.el ~/AppData/Roaming/.emacs.d/init.el

	# copy .emacs.d/cappuccino-noir-theme.el to ~/AppData/Roaming/.emacs.d/cappuccino-noir-theme.el
	cp .emacs.d/cappuccino-noir-theme.el ~/AppData/Roaming/.emacs.d/cappuccino-noir-theme.el
	# copy .emacs.d/somnus-theme.el to ~/AppData/Roaming/.emacs.d/somnus-theme.el
	cp .emacs.d/somnus-theme.el ~/AppData/Roaming/.emacs.d/somnus-theme.el
else
	# make directory ~/.emacs.d
	mkdir -p ~/.emacs.d
	# copy .emacs.d/init.el to ~/.emacs.d/init.el
	cp .emacs.d/init.el ~/.emacs.d/init.el

	# copy .emacs.d/cappuccino-noir-theme.el to ~/.emacs.d/cappuccino-noir-theme.el
	cp .emacs.d/cappuccino-noir-theme.el ~/.emacs.d/cappuccino-noir-theme.el
	# copy .emacs.d/somnus-theme.el to ~/.emacs.d/somnus-theme.el
	cp .emacs.d/somnus-theme.el ~/.emacs.d/somnus-theme.el
fi

