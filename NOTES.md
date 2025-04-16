
### NOTES

#### Recommended Neovim version
Date: 2025-04-16
Windows 11: Neovim 0.10.4 (scoop install neovim@0.10.4)
MacOS:
GNU/Linux Ubuntu 24.10.1:

### Recommended Vim version
Date: 2025-04-16
Windows 11:
MacOS:
GNU/Linux Ubuntu 24.10.1:

#### Logs
Date: 2025-04-16
If you are using Neovim 0.11.0 you may notice an annoying message,
saying sqlite module not found when using Lazy and/or Telescope.
Reverting Neovim version to 0.10.4 fixed the issue on Windows 11.
Date: 2025-04-16
I noticed in Neovim 0.10.4 that the plugin ccc (color highlighter)
wasn't working properly with/without lsp, so I set a specific tag
v2.0.3 and the issues are gone.
