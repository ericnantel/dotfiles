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
# NOTE: On Debian you may have to use exa instead
#alias ls="eza --icons"
#alias ll="eza -laF --icons"
#alias lt="eza --tree --icons"

# For neorg
# NOTE: This assumes you have neovim, neorg.nvim installed
alias notes="nvim ~/Notes/neorg/personal/index.norg"
#alias work="nvim ~/Notes/neorg/work/index.norg"

#autoload -Uz compinit
#compinit

# For kubectl and kubecolor completion
# NOTE: This assumes you have kubectl, kubecolor installed
if which kubectl > /dev/null; then
	# echo Found kubectl
	source <(kubectl completion bash)
fi
if which kubecolor > /dev/null; then
	# echo Found kubecolor
	alias K="sudo kubecolor"
	alias Kget="sudo kubecolor get"
	alias Kportforward="sudo kubecolor port-forward"
	complete -o default -F __start_kubectl kubecolor
	complete -o default -F __start_kubectl K
	complete -o default -F __start_kubectl Kget
	complete -o default -F __start_kubectl Kportforward
fi

# For git
# NOTE: This assumes you have git installed
alias Gadd="git add"
alias Gblame="git blame"
alias Gbranch="git branch"
alias Gcheckout="git checkout"
alias Gcherrypick="git cherry-pick"
alias Gclean="git clean"
alias Gclone="git clone"
alias Gcommit="git commit"
alias Gcommitamend="git commit --amend"
alias Gdiff="git diff"
alias Gfetch="git fetch"
alias Ginit="git init"
alias Glog="git log"
alias Gmerge="git merge"
alias Gpull="git pull"
alias Gpush="git push"
alias Grebase="git rebase"
alias Gremote="git remote"
alias Greset="git reset"
alias Grestore="git restore"
alias Gshow="git show"
alias Gstash="git stash"
alias Gstatus="git status"
alias Gsubmodule="git submodule"
alias Gswitch="git switch"
alias Gworktree="git worktree"

# For language
#export LANG=fr_CA.UTF-8

# For man
# NOTE: This assumes most is installed
export MANPAGER="most"

# For vim, nvim, tmux? and emacs
# NOTE: We need to figure out if we can use colorschemes
# NOTE: Check if /dev/tty* or /dev/pts/*
# NOTE: Checking if $TERM is linux is not reliable
# NOTE: Checking if $TERMCOLOR supports 256 colors or Truecolor (24bits)
# NOTE: We need to consider looking mainly at the output if ssh
export TTY="$( tty )"

# For shell prompt
# NOTE: This assumes you have starship installed
export PATH=~/.local/bin:$PATH
eval "$(starship init bash)"
