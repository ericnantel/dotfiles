
### NOTES

#### Recommended Neovim version
Date: 2025-04-16
Windows 11: Neovim 0.10.4 (scoop install neovim@0.10.4)
MacOS Sequoia 15.4: Neovim 0.10.4 (but brew installs latest 0.11.0)
GNU/Linux Ubuntu 25.04: Neovim 0.9.5-10 (sudo apt install neovim)

### Recommended Vim version
Date: 2025-04-16
Windows 11: Vim 9.1 (scoop install vim)
MacOS Sequoia 15.4: Vim 9.1 (brew install vim)
GNU/Linux Ubuntu 25.04: Vim 9.1.9 (sudo apt install vim)
GNU/Linux Debian 12 (bookworm): Vim 9.0 (sudo apt install vim)

### NOT recommended Neovim version
Date: 2025-05-01
GNU/Linux Debian 12 (bookworm): Neovim 0.7.2 (sudo apt install neovim)
Note: Most popular Neovim Lua plugins requires at least Neovim >= 0.8

#### Logs
Date: 2025-04-16
If you are using Neovim 0.11.0 you may notice an annoying message,
saying sqlite module not found when using Lazy and/or Telescope.
Reverting Neovim version to 0.10.4 fixed the issue on Windows 11 & MacOS.
Date: 2025-04-16
I noticed in Neovim 0.10.4 that the plugin ccc (color highlighter)
wasn't working properly with/without lsp, so I set a specific tag
v2.0.3 and the issues are gone.
Date: 2025-04-16
I removed start-screen plugins: vim-startify and alpha-nvim because
they were barely used and I wanted to reduce loadtime a bit.
Date: 2025-04-17
On GNU/Linux Ubuntu 24.10.1, Neovim 0.9.5-7 is available, but lsp
plugin (nvim-lspconfig) requires 0.10 in master latest, so I reverted
the plugin version to tag v1.8.0 so that it works with Neovim 0.9+.
In the future, I might set plugin's branches and tags based on OS.
Date: 2025-04-24
On Windows 11, I removed Wezterm navigation (Ctrl-hjkl) since it broke
Vim and Neovim split navigation. We might need to add a Neovim plugin to
handle Wezterm and add additional code in .wezterm.lua config to switch back
to Vim/Neovim process..Ideally I would rather fix this using a tmux-like
application on Windows 11.
Date: 2025-05-01
On GNU/Linux Debian 12 (bookworm), eza is not available but exa is.
So for that reason, I am commenting aliases using eza in .bashrc
Date: 2025-05-02
On GNU/Linux Ubuntu 25.04, the tool 'most' does not seem to colorize
man pages, either with bash or zsh. And it seems 'less' as well, so
it could a bug with Ubuntu or 'man'.
Date: 2025-05-06
I refactored Vim & Neovim Configs to keep things simpler.
Date: 2025-05-06
I reverted the Neovim plugin 'mason-lspconfig' to tag v1.32.0
because lastest commit was broken and didn't setup_handlers properly.
Date: 2025-05-08
This time 'mason' was broken, so I replaced the organization 'mason' with
'mason-org' and set version '^1.0.0' for both 'mason.nvim' and 'mason-lspconfig.nvim'
plugins.
Date: 2025-05-12
I enabled termguicolors in Vim config, because airline/airline_theme was not showing
modes (INSERT, NORMAL, etc.) properly.
Date: 2025-05-14
I added $LANG=fr_CA.UTF-8 environment variable in .bashrc & .zshrc as it turns
out 'É' was not being properly captured inside (Neo)Vim.
Date: 2025-05-16
I found out that Wezterm without Tmux running does not seem to
fix the $LANG issue (É) on GNU/Linux. So that could be a bug.
Date: 2025-05-20
I updated IdeaVim Config; although the plugin is still incomplete.
For instance, mapping keys to call a command will not work.
Even calling Actions like their tutorials are not working..
Too bad, it had potential to be good..
Date: 2025-05-21
I found out that Vim set path+=** works on Windows and GNU/Linux;
but not on MacOS (why?). Neovim has no issue with the path (on all OS).
Could it be a bug ?
Date: 2025-05-22
Clangd Lsp Goto-Definitions and/or Goto-Implementations Is also not working properly
on Vim (coc) and Neovim (builtin lsp) for C++ on MacOS. But other languages (Lua, Js)
seem to work fine however. Perhaps this is not Clangd, but Cmake when it's making
compile_commands.json files.
Date: 2025-07-03
I added 'org' to treesitter ensured-installed to fix 'org-bullet' Neovim plugin errors.
Date: 2025-07-07
There are still errors related to Neovim treesitter 'org' support on GNU/Linux.
Unsure if we need to clean cache, but perhaps we should simply remove 'org'
support in Neovim if errors persist.
Date: 2025-07-07
There are errors related to Neovim treesitter-context 'LspRequest' in GNU/Linux when
I open a Markdown file. Unsure if this is only happening with Markdown files.
Date: 2025-09-16
Wezterm may not showup properly in Hyprland Environment on some version,
but the fix is simply to set config.enable_wayland = false in the config.
Date: 2025-09-16
OBS Screen Capture was not available in Hyprland (Wayland) until I installed the following:
- ffmpeg
- pipewire
- xdg-desktop-portal-hyprland
Then I restart Ubuntu and OBS worked again.
Date: 2025-09-30
Hyprland and Hyprpaper are not available in Void Linux Official Package Repo.
Date: 2025-10-03
Void Linux tty console does not support 256 colors, so I will not set darcula colorscheme
in Vim config if that's the case. I might need to do the same for Neovim.
Date: 2025-10-03
Delta will not display properly in Void Linux tty. So I might need to verify first before
copying the .gitconfig.
Date: 2025-10-03
Emacs in no-window launch (-nw) might need we disable colorscheme if in Void Linux tty.
Date: 2025-10-04
Checking if vim, nvim, tmux? and emacs are opened within a pseudo-terminal fixes
colorization, unlike checking if $TERM == "linux" which is not reliable.
Date: 2025-10-04
It seems we cannot run tmux scripts to remove/install plugins within tmux config.
Will need to add an alias to run both scripts before launching tmux.
Date: 2025-10-06
It seems MacOS uses a pseudo-terminal that starts with /dev/tty, thus causing issues
with colorization, which are fixed for Neo(Vim) and Tmux, only Emacs' left to fix on
MacOS.
Date: 2025-10-07
The issue with MacOS regarding tty, is that the Terminal app only supports 256 colors.
In that case, we should not set termguicolors in Vim. On the other hand, Neovim expects
truecolor support. We need a way to make the distinction on MacOS, if possible, without
relying on $TERM or $TERMCOLOR.
Date: 2025-10-10
Ghostty theme Rose-Pine on MacOS is 'Rose Pine Moon' and on GNU/Linux 'rose-pine-moon'
which is bothering me a little .. because I cannot set a theme per system-type within
the config file..oh well.
Date: 2025-10-15
I updated Neo(Vim) plugin keybinds in Insert Mode to use Ctrl-j/k which breaks Tmux
Navigator, so either we change Tmux Navigation keybinds to use Ctrl-a hjkl or we only
navigate when in Normal mode inside Neo(Vim).
Date: 2025-11-06
I may have mentionned it previously, but C++ lsp goto-definitions is not working properly
on MacOS, unless we have been to a source file, then Clangd knows the path. This is strange
because all source file paths are in compile_commands.json and it works perfectly on
Ubuntu. Unsure why, but it might be interesting to try compiling with GCC on MacOS and to
generate compile_commands.json using bear. Only issue is that Apple seems to define an alias
for gcc, g++ which is annoying because I'll need to specify a path for the compiler in
CMakePresets.json ..
Date: 2025-11-07
I added back kubectl,kubecolor aliases to .zshrc,.bashrc but completion may still not be
working properly with Powershell.
Date: 2025-11-07
Should I add doxygen, googletest and pandoc to setup_void_linux.sh ?
Date: 2025-11-07
I think it's time to rewrite README.md and add links to the other projects (cmake_examples, etc.)
