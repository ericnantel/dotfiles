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

# copy .tmux.conf to ~/.tmux.conf
#cp .tmux.conf ~/.tmux.conf
#source ~/.tmux.conf

# make directory ~/.vim
mkdir -p ~/.vim
# make directory ~/.vim/autoload
mkdir -p ~/.vim/autoload
# make directory ~/.vim/bundle
mkdir -p ~/.vim/bundle
# make directory ~/.vim/colors
mkdir -p ~/.vim/colors
# make directory ~/.vim/plugged
mkdir -p ~/.vim/plugged

# copy .vim/coc-settings.json to ~/.vim/coc-settings.json
cp .vim/coc-settings.json ~/.vim/coc-settings.json

# copy vim-plug/plug.vim to ~/.vim/autoload/plug.vim
cp vim-plug/plug.vim ~/.vim/autoload/plug.vim

# copy colorschemes/candle-grey/colors/candle-grey.vim to ~.vim/colors/candle-grey.vim
cp -rp colorschemes/candle-grey/colors/candle-grey.vim ~/.vim/colors/candle-grey.vim

# copy colorschemes/darcula/colors/darcula.vim to ~.vim/colors/darcula.vim
cp -rp colorschemes/darcula/colors/darcula.vim ~/.vim/colors/darcula.vim

# copy colorschemes/oceanic-next-vim/colors/oceanicnext.vim to ~.vim/colors/oceanicnext.vim
cp -rp colorschemes/oceanic-next-vim/colors/oceanicnext.vim ~/.vim/colors/oceanicnext.vim

# copy colorschemes/nightshade.vim/colors/nightshade.vim to ~.vim/colors/nightshade.vim
cp -rp colorschemes/nightshade.vim/colors/nightshade.vim ~/.vim/colors/nightshade.vim

# copy colorschemes/vim-gruvbox8/colors/gruvbox8.vim to ~.vim/colors/gruvbox8.vim
cp -rp colorschemes/vim-gruvbox8/colors/gruvbox8.vim ~/.vim/colors/gruvbox8.vim

# copy colorschemes/vim-yin-yang/colors/yang.vim to ~.vim/colors/yang.vim
cp -rp colorschemes/vim-yin-yang/colors/yang.vim ~/.vim/colors/yang.vim

# copy colorschemes/vim-yin-yang/colors/yin.vim to ~.vim/colors/yin.vim
cp -rp colorschemes/vim-yin-yang/colors/yin.vim ~/.vim/colors/yin.vim

# copy colorschemes/Zenburn/colors/zenburn.vim to ~.vim/colors/zenburn.vim
cp -rp colorschemes/Zenburn/colors/zenburn.vim ~/.vim/colors/zenburn.vim

