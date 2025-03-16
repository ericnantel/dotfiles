#!/bin/sh

os=$(uname -o)

# init and update submodules
git submodule init
git submodule update

# make directory ~/.emacs.d
mkdir -p ~/.emacs.d
# copy .emacs.d/init.el to ~/.emacs.d/init.el
cp .emacs.d/init.el ~/.emacs.d/init.el
#source ~/.emacs.d/init.el

