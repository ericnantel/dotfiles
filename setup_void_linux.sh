
#!/bin/sh

# NOTE: Give this repo a GitHub star ! Thanks ..
# AUTHOR: Eric Nantel
# LINK: https://github.com/ericnantel/dotfiles/setup_void_linux.sh

# TODO: Setup nerd fonts and verify for clang tools for vim and neovim

os=$(uname -o)
timestamp=$(date "+%Y.%m.%d-%H.%M.%S")

# update package manager
sudo xbps-install -Syu xbps

# update installed packages
sudo xbps-install -Syu

# remove unused packages
sudo xbps-remove -yo

# removed outdated kernel versions
sudo vkpurge rm all

# install recommended packages
sudo xbps-install -Sy git \
	vim \
	neovim \
	tmux \
	eza \
	delta \
	starship \
	ripgrep \
	fzf \
	rsync \
	python3 \
	lua \
	nodejs \
	yarn \
	most \
	curl \
	bat \
	zsh \
	zsh-syntax-highlighting

# install optional packages
sudo xbps-install -S htop \
	fastfetch \
	wezterm \
	ghostty \
	emacs \
	wezterm \
	ghostty

# TODO: Clang, Clangd, Clang-Format (Should we simply install LLVM and set path in Vim for Clang-Format ?)
# NOTE: webpack, kubecolor are missing ? Also I removed kubectl from recommended packages.

# backup existing cf.map.gz
if [ -f /usr/share/kbd/keymaps/i386/qwerty/cf.map.gz ]; then
	sudo mv /usr/share/kbd/keymaps/i386/qwerty/cf.map.gz /usr/share/kbd/keymaps/i386/qwerty/cf-${timestamp}.map.gz
fi

# copy cf.map
sudo cp void-linux/usr/share/kbd/keymaps/i386/qwerty/cf.map /usr/share/kbd/keymaps/i386/qwerty/cf.map

# compress cf.map to cf.map.gz
sudo gzip /usr/share/kbd/keymaps/i386/qwerty/cf.map

# backup existing rc.conf
if [ -f /etc/rc.conf ]; then
	sudo mv /etc/rc.conf /etc/rc-${timestamp}.conf
fi

# copy rc.conf
sudo cp void-linux/etc/rc.conf /etc/rc.conf

# backup existing libc-locales
if [ -f /etc/default/libc-locales ]; then
	sudo mv /etc/default/libc-locales /etc/default/libc-locales-${timestamp}
fi

# copy libc-locales
sudo cp void-linux/etc/default/libc-locales /etc/default/libc-locales

# backup existing locale.conf
if [ -f /etc/locale.conf ]; then
	sudo mv /etc/locale.conf /etc/locale-${timestamp}.conf
fi

# copy locale.conf
sudo cp void-linux/etc/locale.conf /etc/locale.conf

# reconfigure locales
sudo xbps-reconfigure -f glibc-locales

# localedef --list-archive
# locale -a

# log installed git version
git --version

# init and update submodules
git submodule init
git submodule update

# backup existing git config
if [ -f ~/.gitconfig ]; then
	mv ~/.gitconfig ~/.gitconfig-${timestamp}
fi

# copy git config
cp .gitconfig-delta ~/.gitconfig

# source git config
source ~/.gitconfig

# backup existing .bashrc
if [ -f ~/.bashrc ]; then
	mv ~/.bashrc ~/.bashrc-${timestamp}
fi

# copy .bashrc
cp .bashrc ~/.bashrc

# source .bashrc
source ~/.bashrc

# backup existing .zshrc
if [ -f ~/.zshrc ]; then
	mv ~/.zshrc ~/.zshrc-${timestamp}
fi

# copy .zshrc
cp .zshrc ~/.zshrc

# source .zshrc
source ~/.zshrc

# TODO: Add zsh to /etc/shells ?

# set zsh as current shell
# NOTE: Remove sudo if for current user
#sudo chsh -s $(which zsh)

# copy wezterm config
copy .wezterm.lua ~/.wezterm.lua

# source wezterm config
source ~/.wezterm.lua

# make directory ~/.config/ghostty
mkdir -p ~/.config/ghostty

# copy ghostty config
cp .config/ghostty/config ~/.config/ghostty/config

# source ghostty config
source ~/.config/ghostty/config

# make directory ~/.config/ghostty/themes
mkdir -p ~/.config/ghostty/themes

# copy ghostty themes
copy ghostty-themes/ghostty-night-owl/NightOwlDark ~/.config/ghostty/themes/NightOwlDark

# copy starship config
cp .config/starship.toml ~/.config/starship.toml

# copy kubecolor config
cp .kube/color.yaml ~/.kube/color.yaml

# copy tmux config
cp .tmux.conf ~/.tmux.conf

# make directory ~/.tmux/plugins/tpm
mkdir -p ~/.tmux/plugins/tpm

# copy tmux plugin manager (tpm)
cp -rp .tmux/plugins/tpm/* ~/.tmux/plugins/tpm

# NOTE: Uncomment if you want to add my Vim, Neovim and Emacs configs (may need to install additional packages)

# # backup existing Jetbrains IntelliJ vim config
# if [ -f ~/.ideavimrc ]; then
# 	mv ~/.ideavimrc ~/.ideavimrc-${timestamp}
# fi

# # copy Jetbrains IntelliJ vim config
# cp .ideavimrc ~/.ideavimrc

# # backup existing vim config
# if [ -f ~/.vimrc ]; then
# 	mv ~/.vimrc ~/.vimrc-${timestamp}
# fi

# # copy vim config
# cp .vimrc ~/.vimrc

# # source vim config
# source ~/.vimrc

# # make directories ~/.vim, ~/.vim/autoload, ~/.vim/bundle, ~/.vim/colors, ~/.vim/plugged, ~/.vim/undodir
# mkdir -p ~/.vim
# mkdir -p ~/.vim/autoload
# mkdir -p ~/.vim/bundle
# mkdir -p ~/.vim/colors
# mkdir -p ~/.vim/plugged
# mkdir -p ~/.vim/undodir

# # copy vim coc settings to ~/.vim
# cp .vim/coc-settings.json ~/.vim/coc-settings.json

# # copy vim plug to ~/.vim/autoload
# cp vim-plug/plug.vim ~/.vim/autoload/plug.vim

# # copy vim colorschemes to ~/.vim/colors
# cp -rp colorschemes/darcula/colors/candle-grey.vim ~/.vim/colors/candle-grey.vim
# cp -rp colorschemes/darcula/colors/darcula.vim ~/.vim/colors/darcula.vim
# cp -rp colorschemes/darcula/colors/gruvbox.vim ~/.vim/colors/gruvbox8.vim

# # make directories for ~/.vim, ~/.vim/undodir-nvim, ~/.config/nvim, ~/.config/nvim/colors
# mkdir -p ~/.vim
# mkdir -p ~/.vim/undodir-nvim
# mkdir -p ~/.config/nvim
# mkdir -p ~/.config/nvim/colors

# # copy neovim config
# cp -rp .config/nvim/* ~/.config/nvim

# # copy vim colorschemes to ~/.config/nvim/colors
# cp -rp colorschemes/darcula/colors/candle-grey.vim ~/.config/nvim/colors/candle-grey.vim
# cp -rp colorschemes/darcula/colors/darcula.vim ~/.config/nvim/colors/darcula.vim
# cp -rp colorschemes/darcula/colors/gruvbox.vim ~/.config/nvim/colors/gruvbox8.vim

# # backup existing emacs config
# if [ -d ~/.emacs.d ]; then
# 	mv ~/.emacs.d/* ~/.emacs.d-${timestamp}
# fi

# # make directory ~/.emacs.d
# mkdir -p ~/.emacs.d

# # copy emacs config
# cp .emacs.d/init.el ~/.emacs.d/init.el

# # copy emacs themes/colorschemes
# cp .emacs.d/cappuccino-noir-theme.el ~/.emacs.d/cappuccino-noir-theme.el
# cp .emacs.d/somnus-theme.el ~/.emacs.d/somnus-theme.el

# reboot now
sudo shutdown -r now

