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
	# echo Found kubectl
	source <(kubectl completion zsh)
fi
if which kubecolor > /dev/null; then
	# echo Found kubecolor
	alias K="sudo kubecolor"
	alias Kget="sudo kubecolor get"
	alias Kportforward="sudo kubecolor port-forward"
	compdef kubecolor=kubectl
fi

# For git
# NOTE: This assumes you have git installed
alias Gadd="git add"
alias Gblame="git blame --color-lines --color-by-age"
alias Gbranch="git branch --color=always"
alias Gcheckout="git checkout"
alias Gcherrypick="git cherry-pick"
alias Gclean="git clean"
alias Gclone="git clone"
alias Gcommit="git commit"
alias Gcommitamend="git commit --amend"
alias Gdiff="git diff"
alias Gfetch="git fetch"
alias Ginit="git init"
alias Glog="git log --graph --decorate --stat"
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

# For fzf
# NOTE: There seem to be no difference using either cat or bat as preview
export FZF_DEFAULT_OPTS="
	--color=fg:#908caa,bg:#232136,hl:#ea9a97
	--color=fg+:#e0def4,bg+:#393552,hl+:#ea9a97
	--color=border:#44415a,header:#3e8fb0,gutter:#232136
	--color=spinner:#f6c177,info:#9ccfd8
	--color=pointer:#c4a7e7,marker:#eb6f92,prompt:#908caa
	--bind ctrl-j:down,ctrl-k:up,tab:toggle,ctrl-s:toggle
	--multi --reverse --no-scrollbar
	--smart-case
	--preview 'cat {}'
	--preview-window left:50%
	--preview-border=rounded
	--preview-label='File Content'
	--preview-label-pos=center"

# For ripgrep to search files faster in fzf
if which rg > /dev/null; then
	# echo Found ripgrep
	export FZF_DEFAULT_COMMAND="rg --files"
fi

# For fzf keybinds and completion
# NOTE: This assumes you have fzf installed (0.48.0 or later)
if which fzf > /dev/null; then
	# echo Found fzf
	export FZF_CTRL_R_COMMAND= # no history
	export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
	source <(fzf --zsh)
fi

# For shell prompt
# NOTE: This assumes you have starship installed
eval "$(starship init zsh)"

# For syntax highlighting
# NOTE: This assumes you have zsh-syntax-highlighting installed
if [[ "$os" == "GNU/Linux" ]]; then
	# NOTE: This assumes you are on Linux
	if [ -f /etc/os-release ]; then
		. /etc/os-release
		OS_RELEASE_DISTRIB_ID=$DISTRIB_ID
		OS_RELEASE_NAME=$NAME
		case ${OS_RELEASE_DISTRIB_ID} in
			"void")
				# Void Linux
				source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
			;;
		esac
		case ${OS_RELEASE_NAME} in
			"Ubuntu")
				# Ubuntu
				source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
			;;
		esac
	else
		# Possibly Debian or Ubuntu
		source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
	fi
else
	# NOTE: This assumes you have homebrew installed (MacOS or Linux)
	# TODO: However we should check for BSD as well
	source $(brew --prefix)/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
fi
