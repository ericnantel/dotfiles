# Assumes starship is installed
Invoke-Expression (&starship init powershell)

# Assumes terminal icons module is installed
# Import-Module -Name Terminal-Icons

# Assumes eza and a nerd-font (with icons) are installed
Set-Alias -Name ls -Value Eza_Icons -Option AllScope
function Eza_Icons { eza --icons $args }
