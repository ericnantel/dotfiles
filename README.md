
### Hello. Bonjour

My name is Eric Nantel. I am a SENIOR Rendering Architect.

Do you wish to make your life simpler as a developer?

If the answer is yes, please keep reading. :smile:

I created this repository for anyone who wants to install my Vim or NeoVim setup on their computer, while I am still learning their plugins. Btw, I might try Emacs one day, but not today. :smile:

#### Step 1

Be sure to read the 'Getting started' :book: below, so that you have everything I would have installed, as a developer, prior to Vim or NeoVim on your machine.

* **Getting started** :book: [English](/docs/en/getting-started-en.md#getting-started) | :book: [Français](/docs/fr/getting-started-fr.md#getting-started)

#### Step 2

Your system might already have Vi or Vim installed. Regardless, use a package manager and install vim or neovim.

Open a Terminal application and type the command:
- For Vim or NeoVim
```vim
    vim
```
- For NeoVim only
```
    nvim
```

If you have an error, that means you have not installed Vim or NeoVim properly on your system.

:bulb: Press the following command to quit Normal mode:
```vim
    :q
```

*Please consider reading the [Getting started](#step-1) documentation :book: above.*

#### Step 3

Open a Terminal application and go to this repository directory.

This repository contains submodules, you need to update them to use my Vim or NeoVim setup:
```git
    git submodule update
```

*Please consider reading the [Getting started](#step-1) documentation :book: above.*

#### Step 4

Open a Terminal application and go to this repository directory if not already.

Run the following Shell script (.sh) to install my config:
- For Vim
```shell
    sh install_vim_config.sh
```
- For NeoVim
```shell
    sh install_neovim_config.h
```

If you have an error, that means your terminal or emulator cannot read Shell scripts (.sh) or execute Unix commands. If you are using Windows 11, I suggest you to install WSL 2 (Windows Subsystem Linux 2).

*Please consider reading the [Getting started](#step-1) documentation :book: above.*

#### Step 5

Open Vim or NeoVim in a Terminal application to install the plugins. 

*If you see an error in the Terminal console for Vim, ignore it and press a key to continue.*

Enter the following command in Normal mode:
- For Vim
```
    :PluginInstall
```
- For NeoVim
```
    TODO..
```

If you have an error, that means you might have forgotten to update the submodules or there is an issue within the config file.

Hopefully, everything went as planned. You might need to quit and reopen Vim to see the changes.

Let's code faster ! :smile:

:star: *Please consider following me on GitHub or social medias.* :thumbsup:

[Top](#hello-bonjour)

*Copyright(c) 2024 - Eric Nantel*
