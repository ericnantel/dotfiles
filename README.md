
### Hello. Bonjour

#### Screenshots
NeoVim (Catppuccin)
![Screenshot 1](/resources/images/Capture%20d’écran,%20le%202024-04-19%20à%2010.51.11.png "NeoVim Catppuccin")
NeoVim (Catppuccin-Mocha)
![Screenshot 2](/resources/images/Capture%20d’écran,%20le%202024-04-19%20à%2010.52.16.png "NeoVim Catppuccin-Mocha")
NeoVim (Darcula)
![Screenshot 3](/resources/images/Capture%20d’écran,%20le%202024-04-19%20à%2010.55.13.png "NeoVim Darcula")
Vim (Darcula)
![Screenshot 4](/resources/images/Capture%20d’écran%202024-04-12%20175656.png "Screenshot 4")

My name is Eric Nantel. I am a SENIOR Rendering Architect.

Do you wish to make your life simpler as a developer?

If the answer is yes, please keep reading. :smile:

I created this repository for anyone who wants to install my Vim or NeoVim setup on their computer, while I am still learning their plugins. Btw, I might try Emacs one day, but not today. :smile:

#### Step 1

Be sure to read the 'Getting started' :book: below, so that you have everything I would have installed, as a developer, prior to Vim or NeoVim on your machine.

* **Getting started** :book: [English](/docs/en/getting-started-en.md#getting-started) | :book: [Français](/docs/fr/getting-started-fr.md#getting-started)

#### Step 2

Your system might already have Vi or Vim and/or Git installed. 
Regardless, use a package manager and install the following packages:
- git and git-lfs (optional)
- vim and/or neovim (0.9.5+ minimal - 0.10.0 recommended)
- gcc or clang (on GNU/Linux) or llvm (recommended on Windows for Vim for clang-format)
- clang-format (on MacOS for Vim)
- clang, clang-format (on GNU/Linux)
- cmake and make (unless you have it already)
- ninja (ninja-build for Apt)
- nodejs
- npm
- python3 and python3-venv (on Debian/Ubuntu for Neovim Mason Plugins)
- lua (lua5.4 or newer if asked by Apt) and luajit (optional)
- delta (optional - named git-delta by Homebrew)
- ripgrep (optional)
- fzf (optional)
- curl (recommended)
- tmux (on MacOS and GNU/Linux)
- eza (optional but require a nerd-font)
- zsh-syntax-highlighting (optional - on MacOS)
- starship (optional - available on most platform shells - requires a nerd-font)
- ssh (optional)

Then open a Terminal application and type the command 'vim' or 'nvim' to see if you have it installed.
To close vim/neovim, press ':q' to return to the console.

*Please consider reading the [Getting started](#step-1) documentation :book: above.*

#### Step 3

Open a Terminal application and go to this repository directory.

Run the following Shell script (.sh) to install my config:
- For Vim
```shell
    sh install_vim_config.sh
```
- For NeoVim
```shell
    sh install_neovim_config.h
```

If you have an error, that means your terminal or emulator cannot read Shell scripts (.sh) or execute Unix commands. 
If you are using Windows 11, I suggest you to install WSL 2 (Windows Subsystem Linux 2).
Or it could be that you have not installed git yet on your machine.

Close the Terminal application to apply config changes; or run the following commands:
- For GNU/Linux
```bash
    source ~/.vimrc
    source ~/.bashrc
```
- For MacOS
```shell
    source ~/.vimrc
    source ~/.zshrc
```

*Please consider reading the [Getting started](#step-1) documentation :book: above.*

#### Step 4

Open Vim or NeoVim in a Terminal application to install the plugins. 

*If you see an error in the Terminal console for Vim, ignore it and press a key to continue.*

Enter the following command(s) in Normal mode:
- For Vim only (NeoVim uses Lazy)
```
    :PlugInstall
```
### Conclusion

Hopefully, everything went as planned. You might need to quit (:q) and reopen Vim or NeoVim to see the changes.

Let's code faster ! :smile:

:star: *Please consider following me on GitHub or social medias.* :thumbsup:

[Top](#hello-bonjour)

*Copyright(c) 2024 - Eric Nantel*
