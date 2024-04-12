
### Hello. Bonjour

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
- git (unless you have it already)
- vim or neovim
- cmake
- ninja (ninja-build for Apt)
- nodejs
- yarn
- python3
- curl (used as key-only by Homebrew on MacOS)
- bat (optional)
- htop (optional - install ntop if using Scoop - requires sudo privileges on MacOS)
- neofetch (optional)
- make (optional - renamed gmake by Homebrew on MacOS)

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

*Please consider reading the [Getting started](#step-1) documentation :book: above.*

#### Step 4

Open Vim or NeoVim in a Terminal application to install the plugins. 

*If you see an error in the Terminal console for Vim, ignore it and press a key to continue.*

Enter the following command(s) in Normal mode:

```
    :PlugInstall
```
### Conclusion

Hopefully, everything went as planned. You might need to quit (:q) and reopen Vim to see the changes.

Let's code faster ! :smile:

:star: *Please consider following me on GitHub or social medias.* :thumbsup:

[Top](#hello-bonjour)

*Copyright(c) 2024 - Eric Nantel*
