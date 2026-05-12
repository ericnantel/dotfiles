#!/bin/sh

os=$(uname -o)

#init and update submodules
git submodule init
git submodule update

# copy .ideavimrc to ~/.ideavimrc
cp .ideavimrc ~/.ideavimrc
#source ~/.ideavimrc

# copy .clang-format to ~/.clang-format
#cp .clang-format ~/.clang-format
#source ~/.clang-format

