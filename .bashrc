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
alias K="sudo kubecolor"
alias Kget="sudo kubecolor get"
alias Kportforward="sudo kubecolor port-forward"
source <(kubectl completion bash)
complete -o default -F __start_kubectl kubecolor
complete -o default -F __start_kubectl k
complete -o default -F __start_kubectl Kget
complete -o default -F __start_kubectl Kportforward

# For git
# NOTE: This assumes you have git installed
alias Gadd="git add"
alias Gamend="git amend"
alias Gblame="git blame"
alias Gbranch="git branch"
alias Gcheckout="git checkout"
alias Gcherrypick="git cherry-pick"
alias Gclean="git clean"
alias Gclone="git clone"
alias Gcommit="git commit"
alias Gdiff="git diff"
alias Gfetch="git fetch"
alias Ginit="git init"
alias Glog="git log"
alias Gmerge="git merge"
alias Gpull="git pull"
alias Gpush="git push"
alias Grebase="git rebase"
alias Greset="git reset"
alias Grestore="git restore"
alias Gshow="git show"
alias Gstash="git stash"
alias Gstatus="git status"
alias Gswitch="git switch"

# For language
#export LANG=fr_CA.UTF-8

# For man
# NOTE: This assumes most is installed
export MANPAGER="most"

# For shell prompt
# NOTE: This assumes you have starship installed
export PATH=~/.local/bin:$PATH
eval "$(starship init bash)"
