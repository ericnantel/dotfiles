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
Set-Alias -Name kubectl -Value kubecolor
Set-Alias -Name K -Value kubectl
# NOTE: Those aliases are not working properly
# I tried using functions but it didn't work with completion..
#Set-Alias -Name Kget -Value kubectl get
#Set-Alias -Name Kportforward -Value kubectl port-forward
# Completion for kubectl
# This needs to be added before Register-ArgumentCompleter
if (Get-Command kubectl -ErrorAction SilentlyContinue) {
	# This also registers the $__kubectlCompleterBlock variable
	kubectl completion powershell | Out-String | Invoke-Expression
}
# Reuse the kubectl completion on kubecolor and the aliases
Register-ArgumentCompleter -CommandName 'K', 'kubectl', 'kubecolor' -ScriptBlock $__kubectlCompleterBlock

# Assumes git is installed
Set-Alias -Name Gadd -Value GitAdd_Cmd -Option AllScope
function GitAdd_Cmd { git add $args }
Set-Alias -Name Gamend -Value GitAmend_Cmd -Option AllScope
function GitAmend_Cmd { git amend $args }
Set-Alias -Name Gblame -Value GitBlame_Cmd -Option AllScope
function GitBlame_Cmd { git blame $args }
Set-Alias -Name Gbranch -Value GitBranch_Cmd -Option AllScope
function GitBranch_Cmd { git branch $args }
Set-Alias -Name Gcheckout -Value GitCheckout_Cmd -Option AllScope
function GitCheckout_Cmd { git checkout $args }
Set-Alias -Name Gcherrypick -Value GitCherryPick_Cmd -Option AllScope
function GitCherryPick_Cmd { git cherry-pick $args }
Set-Alias -Name Gclean -Value GitClean_Cmd -Option AllScope
function GitClean_Cmd { git clean $args }
Set-Alias -Name Gclone -Value GitClone_Cmd -Option AllScope
function GitClone_Cmd { git clone $args }
Set-Alias -Name Gcommit -Value GitCommit_Cmd -Option AllScope
function GitCommit_Cmd { git commit $args }
Set-Alias -Name Gdiff -Value GitDiff_Cmd -Option AllScope
function GitDiff_Cmd { git diff $args }
Set-Alias -Name Gfetch -Value GitFetch_Cmd -Option AllScope
function GitFetch_Cmd { git fetch $args }
Set-Alias -Name Ginit -Value GitInit_Cmd -Option AllScope
function GitInit_Cmd { git init $args }
Set-Alias -Name Glog -Value GitLog_Cmd -Option AllScope
function GitLog_Cmd { git log $args }
Set-Alias -Name Gmerge -Value GitMerge_Cmd -Option AllScope
function GitMerge_Cmd { git merge $args }
Set-Alias -Name Gpull -Value GitPull_Cmd -Option AllScope
function GitPull_Cmd { git pull $args }
Set-Alias -Name Gpush -Value GitPush_Cmd -Option AllScope
function GitPush_Cmd { git push $args }
Set-Alias -Name Grebase -Value GitRebase_Cmd -Option AllScope
function GitRebase_Cmd { git rebase $args }
Set-Alias -Name Greset -Value GitReset_Cmd -Option AllScope
function GitReset_Cmd { git reset $args }
Set-Alias -Name Grestore -Value GitRestore_Cmd -Option AllScope
function GitRestore_Cmd { git restore $args }
Set-Alias -Name Gshow -Value GitShow_Cmd -Option AllScope
function GitShow_Cmd { git show $args }
Set-Alias -Name Gstash -Value GitStash_Cmd -Option AllScope
function GitStash_Cmd { git stash $args }
Set-Alias -Name Gstatus -Value GitStatus_Cmd -Option AllScope
function GitStatus_Cmd { git status $args }
Set-Alias -Name Gswitch -Value GitSwitch_Cmd -Option AllScope
function GitSwitch_Cmd { git switch $args }
Set-Alias -Name Gworktree -Value GitWorktree_Cmd -Option AllScope
function GitWorktree_Cmd { git worktree $args }

# For language
#$Env:LANG = "fr_CA.UTF-8"

