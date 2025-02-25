# ~/.bashrc: executed by bash(1) for non-login shells.

# Note: PS1 and umask are already set in /etc/profile. You should not
# need this unless you want different defaults for root.
# PS1='${debian_chroot:+($debian_chroot)}\h:\w\$ '
# umask 022

# You may uncomment the following lines if you want `ls' to be colorized:
# export LS_OPTIONS='--color=auto'
# eval "$(dircolors)"
# alias ls='ls $LS_OPTIONS'
# alias ll='ls $LS_OPTIONS -l'
# alias l='ls $LS_OPTIONS -lA'
#
# Some more alias to avoid making mistakes:
# alias rm='rm -i'
# alias cp='cp -i'
# alias mv='mv -i'

# For eza
# NOTE: This assumes you have eza installed
alias ls="eza --icons"
alias ll="eza -laF --icons"
alias lt="eza --tree --icons"

# For neorg
# NOTE: This assumes you have neovim, neorg.nvim installed
alias notes="nvim ~/Notes/neorg/index.norg"

# For shell prompt
# NOTE: This assumes you have starship installed
export PATH=~/.local/bin:$PATH
eval "$(starship init bash)"

