
#!/bin/sh

# NOTE: Give this repo a GitHub star ! Thanks ..
# AUTHOR: Eric Nantel
# LINK: https://github.com/ericnantel/dotfiles/setup_void_linux.sh

# TODO: Setup nerd fonts and add eza, starship, ripgrep, fzf, etc..

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
	tmux \
	starship \
	ripgrep \
	fzf \
	python3 \
	lua \
	nodejs

# install optional packages
sudo xbps-install -S htop \
	fastfetch \
	eza

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

#copy rc.conf
sudo cp /void-linux/etc/rc.conf /etc/rc.conf

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

#sleep 10

# reboot now
sudo shutdown -r now

