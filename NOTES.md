
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
