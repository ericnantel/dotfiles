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
alias work="nvim ~/Notes/neorg/work/index.norg"

# For shell prompt
# NOTE: This assumes you have starship installed
eval "$(starship init zsh)"

# For syntax highlighting
# NOTE: This assumes you have zsh-syntax-highlighting installed
if [[ "$os" == "GNU/Linux" ]]; then
	# NOTE: This assumes you are on Linux
	source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
else
	# NOTE: This assumes you have homebrew installed (MacOS or Linux)
	source $(brew --prefix)/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
fi
