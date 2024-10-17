# Assumes starship is installed
Invoke-Expression (&starship init powershell)

#Assumes terminal icons module is installed
# Import-Module -Name Terminal-Icons

#Assumes eza is installed
Set-Alias -Name ls -Value Eza_Icons
function Eza_Icons { eza --icons $args }
