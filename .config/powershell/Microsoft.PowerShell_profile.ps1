# Assumes starship is installed
Invoke-Expression (&starship init powershell)

# Assumes terminal icons module is installed
# Import-Module -Name Terminal-Icons

# Assumes eza and a nerd-font (with icons) are installed
Set-Alias -Name ls -Value Eza_Icons -Option AllScope
function Eza_Icons { eza --icons $args }

# Assumes neovim and neorg.nvim are installed
Set-Alias -Name notes -Value Nvim_Notes -Option AllScope
function Nvim_Notes { nvim ~/Notes/neorg/personal/index.norg $args }
#Set-Alias -Name work -Value Nvim_Work -Option AllScope
#function Nvim_Work { nvim ~/Notes/neorg/work/index.norg $args }

# Assumes kubectl and kubecolor are installed
Set-Alias -Name k -Value Kubectl_Cmd -Option AllScope
function Kubectl_Cmd { kubecolor $args }
#function Kubectl_Cmd { kubectl $args }
