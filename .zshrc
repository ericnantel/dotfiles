
# For exa, eza
# alias ls="eza --color=always --long --git --no-filesize --icons=always --no-time --no-user --no-permissions"
# alias ll="eza -alF --icons"
# alias lt="eza --tree --icons"

# For shell prompt
# NOTE: This assumes you have starship installed
eval "$(starship init zsh)"

# For syntax highlighting
# NOTE: This assumes you have homebrew and zsh-syntax-highlighting installed
source $(brew --prefix)/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
