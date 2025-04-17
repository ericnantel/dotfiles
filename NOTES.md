
### NOTES

#### Recommended Neovim version
Date: 2025-04-16
Windows 11: Neovim 0.10.4 (scoop install neovim@0.10.4)
MacOS Sequoia 15.4: Neovim 0.10.4 (but brew installs latest 0.11.0)
GNU/Linux Ubuntu 24.10.1: Neovim 0.9.5-7 (sudo apt install neovim)

### Recommended Vim version
Date: 2025-04-16
Windows 11:
MacOS Sequoia 15.4:
GNU/Linux Ubuntu 24.10.1: Vim 9.1 (sudo apt install vim)

#### Logs
Date: 2025-04-16
If you are using Neovim 0.11.0 you may notice an annoying message,
saying sqlite module not found when using Lazy and/or Telescope.
Reverting Neovim version to 0.10.4 fixed the issue on Windows 11.
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
