
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
	vim

# install optional packages
sudo xbps-install -S htop \
	fastfetch

# backup existing cf.map.gz
sudo mv /usr/share/kbd/keymaps/i386/qwerty/cf.map.gz /usr/share/kbd/keymaps/i386/qwerty/cf-${timestamp}.map.gz

# copy cf.map
sudo cp void-linux/usr/share/kbd/keymaps/i386/qwerty/cf.map /usr/share/kbd/keymaps/i386/qwerty/cf.map

# compress cf.map to cf.map.gz
sudo gzip /usr/share/kbd/keymaps/i386/qwerty/cf.map

# backup existing rc.conf
sudo mv /etc/rc.conf /etc/rc-${timestamp}.conf

#copy rc.conf
sudo cp /void-linux/etc/rc.conf /etc/rc.conf

# backup existing libc-locales
sudo mv /etc/default/libc-locales /etc/default/libc-locales-${timestamp}

# copy libc-locales
sudo cp void-linux/etc/default/libc-locales /etc/default/libc-locales

# backup existing locale.conf
sudo mv /etc/locale.conf /etc/locale-${timestamp}.conf

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

# reboot now
sudo shutdown -r now

