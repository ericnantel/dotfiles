#!/bin/sh

os=$(uname -o)

# init and update submodules
git submodule init
git submodule update

# copy .emacs.el to ~/.emacs.el
cp .emacs.el ~/.emacs.el
#source ~/.emacs.el

