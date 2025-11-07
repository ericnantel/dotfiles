#!/usr/bin/zsh

os=$(uname -o)

# For eza
# NOTE: This assumes you have eza installed
alias ls="eza --color=always --long --git --no-filesize --icons=always --no-time --no-user --no-permissions"
alias ll="eza -alF --icons"
alias lt="eza --tree --icons"

# For neorg
# NOTE: This assumes you have neovim, neorg.nvim installed
alias notes="nvim ~/Notes/neorg/personal/index.norg"
#alias work="nvim ~/Notes/neorg/work/index.norg"

autoload -Uz compinit
compinit

# For kubectl and kubecolor completion
# NOTE: This assumes you have kubectl installed
if which kubectl > /dev/null; then
	echo Found kubectl
	source <(kubectl completion zsh)
fi
if which kubecolor > /dev/null; then
	echo Found kubecolor
	alias K="sudo kubecolor"
	alias Kget="sudo kubecolor get"
	alias Kportforward="sudo kubecolor port-forward"
	compdef kubecolor=kubectl
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
eval "$(starship init zsh)"

# For syntax highlighting
# NOTE: This assumes you have zsh-syntax-highlighting installed
if [[ "$os" == "GNU/Linux" ]]; then
	# NOTE: This assumes you are on Linux
	if [ -f /etc/os-release ]; then
		. /etc/os-release
		OS=$DISTRIB_ID
		case ${OS} in
			"void")
				# Void Linux
				source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
			;;
		esac
	else
		# Possibly Debian or Ubuntu
		source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
	fi
else
	# NOTE: This assumes you have homebrew installed (MacOS or Linux)
	source $(brew --prefix)/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
fi
