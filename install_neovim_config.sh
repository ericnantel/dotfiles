#!/bin/sh

os=$(uname -o)

# init and update submodules
git submodule init
git submodule update

# copy ~/.gitconfig to ~/.gitconfig-backup
#cp ~/.gitconfig ~/.gitconfig-backup
# copy .gitconfig-delta to ~/.gitconfig
#cp .gitconfig-delta ~/.gitconfig
#source ~/.gitconfig

# copy .bashrc to ~/.bashrc
#cp .bashrc ~/.bashrc
#source ~/.bashrc

# copy .zshrc to ~/.zshrc
#cp .zshrc ~/.zshrc
#source ~/.zshrc

# if [ "$os" = 'Msys' ]; then
# 	mkdir -p (dirname "$PROFILE")
# 	cp .config/powershell/Microsoft.PowerShell_profile.ps1 "$PROFILE"
# else
# 	mkdir -p ~/.config/powershell
# 	cp .config/powershell/Microsoft.PowerShell_profile.ps1 ~/.config/powershell/Microsoft.PowerShell_profile.ps1
# fi

# if [ "$os" = 'Msys' ]; then
# else
	# make directory ~/.config/ghostty
	#mkdir -p ~/.config/ghostty
	# copy .config/ghostty/config to ~/.config/ghostty/config
	#cp .config/ghostty/config ~/.config/ghostty/config
	#source ~/.config/ghostty/config

	# make directory ~/.config/ghostty/themes
	#mkdir -p ~/.config/ghostty/themes
	# copy ghostty-themes/ghostty-night-owl/NightOwlDark to ~.config/ghostty/themes/NightOwlDark
	#cp ghostty-themes/ghostty-night-owl/NightOwlDark to ~/.config/ghostty-themes/NightOwlDark
# fi

# copy .wezterm.lua to ~/.wezterm.lua
#cp .wezterm.lua ~/.wezterm.lua
#source ~/.wezterm.lua

# copy .clang-format to ~/.clang-format
#cp .clang-format ~/.clang-format
#source ~/.clang-format

# copy .tmux.conf to ~/.tmux.conf
#cp .tmux.conf ~/.tmux.conf
#source ~/.tmux.conf

# copy .config/starship.toml to ~/.config/starship.toml
#cp .config/starship.toml ~/.config/starship.toml
#source ~/.config/starship.toml

# make directory ~/.vim
mkdir -p ~/.vim
# make directory ~/.vim/undodir-nvim
mkdir -p ~/.vim/undodir-nvim

if [ "$os" = 'Msys' ]; then
	# make directory ~/AppData/Local/nvim
	mkdir -p ~/AppData/Local/nvim
	# make directory ~/AppData/Local/nvim/colors
	mkdir -p ~/AppData/Local/nvim/colors

	# copy .config/nvim to ~/AppData/Local/nvim
	cp -rp .config/nvim/* ~/AppData/Local/nvim

	# copy colorschemes/candle-grey/colors/candle-grey.vim to ~/AppData/Local/nvim/colors/candle-grey.vim
	cp -rp colorschemes/candle-grey/colors/candle-grey.vim ~/AppData/Local/nvim/colors/candle-grey.vim

	# copy colorschemes/darcula/colors/darcula.vim to ~/AppData/Local/nvim/colors/darcula.vim
	cp -rp colorschemes/darcula/colors/darcula.vim ~/AppData/Local/nvim/colors/darcula.vim

	# copy colorschemes/oceanic-next-vim/colors/oceanicnext.vim to ~/AppData/Local/nvim/colors/oceanicnext.vim
	cp -rp colorschemes/oceanic-next-vim/colors/oceanicnext.vim ~/AppData/Local/nvim/colors/oceanicnext.vim

	# copy colorschemes/nightshade.vim/colors/nightshade.vim to ~/AppData/Local/nvim/colors/nightshade.vim
	cp -rp colorschemes/nightshade.vim/colors/nightshade.vim ~/AppData/Local/nvim/colors/nightshade.vim
	
	# copy colorschemes/vim-gruvbox8/colors/gruvbox8.vim to ~/AppData/Local/nvim/colors/gruvbox8.vim
	cp -rp colorschemes/vim-gruvbox8/colors/gruvbox8.vim ~/AppData/Local/nvim/colors/gruvbox8.vim

	# copy colorschemes/vim-yin-yang/colors/yang.vim to ~/AppData/Local/nvim/colors/yang.vim
	cp -rp colorschemes/vim-yin-yang/colors/yang.vim ~/AppData/Local/nvim/colors/yang.vim

	# copy colorschemes/vim-yin-yang/colors/yin.vim to ~/AppData/Local/nvim/colors/yin.vim
	cp -rp colorschemes/vim-yin-yang/colors/yin.vim ~/AppData/Local/nvim/colors/yin.vim

	# copy colorschemes/Zenburn/colors/zenburn.vim to ~/AppData/Local/nvim/colors/zenburn.vim
	cp -rp colorschemes/Zenburn/colors/zenburn.vim ~/AppData/Local/nvim/colors/zenburn.vim

else
	# make directory ~/.config/nvim
	mkdir -p ~/.config/nvim
	# make directory ~/.config/nvim/colors
	mkdir -p ~/.config/nvim/colors

	# copy .config/nvim to ~/.config/nvim
	cp -rp .config/nvim/* ~/.config/nvim
	
	# copy colorschemes/candle-grey/colors/candle-grey.vim to ~/.config/nvim/colors/candle-grey.vim
	cp -rp colorschemes/candle-grey/colors/candle-grey.vim ~/.config/nvim/colors/candle-grey.vim

	# copy colorschemes/darcula/colors/darcula.vim to ~/.config/nvim/colors/darcula.vim
	cp -rp colorschemes/darcula/colors/darcula.vim ~/.config/nvim/colors/darcula.vim

	# copy colorschemes/oceanic-next-vim/colors/oceanicnext.vim to ~/.config/nvim/colors/oceanicnext.vim
	cp -rp colorschemes/oceanic-next-vim/colors/oceanicnext.vim ~/.config/nvim/colors/oceanicnext.vim

	# copy colorschemes/nightshade.vim/colors/nightshade.vim to ~/.config/nvim/colors/nightshade.vim
	cp -rp colorschemes/nightshade.vim/colors/nightshade.vim ~/.config/nvim/colors/nightshade.vim
	
	# copy colorschemes/vim-gruvbox8/colors/gruvbox8.vim to ~/.config/nvim/colors/gruvbox8.vim
	cp -rp colorschemes/vim-gruvbox8/colors/gruvbox8.vim ~/.config/nvim/colors/gruvbox8.vim

	# copy colorschemes/vim-yin-yang/colors/yang.vim to ~/.config/nvim/colors/yang.vim
	cp -rp colorschemes/vim-yin-yang/colors/yang.vim ~/.config/nvim/colors/yang.vim

	# copy colorschemes/vim-yin-yang/colors/yin.vim to ~/.config/nvim/colors/yin.vim
	cp -rp colorschemes/vim-yin-yang/colors/yin.vim ~/.config/nvim/colors/yin.vim

	# copy colorschemes/Zenburn/colors/zenburn.vim to ~/.config/nvim/colors/zenburn.vim
	cp -rp colorschemes/Zenburn/colors/zenburn.vim ~/.config/nvim/colors/zenburn.vim

	# copy colorschemes/papercolor-theme/colors/PaperColor.vim to ~/.config/nvim/colors/PaperColor.vim
	cp -rp colorschemes/papercolor-theme/colors/PaperColor.vim ~/.config/nvim/colors/PaperColor.vim
fi

