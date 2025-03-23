#!/bin/sh

os=$(uname -o)

# init and update submodules
git submodule init
git submodule update

# make directory ~/.emacs.d
mkdir -p ~/.emacs.d
# copy .emacs.d/init.el to ~/.emacs.d/init.el
cp .emacs.d/init.el ~/.emacs.d/init.el

# copy .emacs.d/cappuccino-noir-theme.el to ~/.emacs.d/cappuccino-noir-theme.el
cp .emacs.d/cappuccino-noir-theme.el ~/.emacs.d/cappuccino-noir-theme.el
# copy .emacs.d/somnus-theme.el to ~/.emacs.d/somnus-theme.el
cp .emacs.d/somnus-theme.el ~/.emacs.d/somnus-theme.el

