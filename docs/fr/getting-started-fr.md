
# Getting started

*[English version](/docs/en/getting-started-en.md) available*

En tant que développeur, je dois utiliser plusieurs logiciels, outils de développement et languages de programmation dans mon quotidien pour remplir mes tâches de travail. Parfois je dois utiliser différentes machines, ou systèmes d'opération pour développer, tester ou distribuer des applications, etc. Donc cela peut facilement compliquer les choses si je n'utilise pas les logiciels, outils de développement, etc. appropriés sur ces machines, sur lesquels je n'ai pas toujours contrôle sur ce qui y est installé.

Ce document ne vous dira pas comment écrire dans un certain language de programmation, ni comment utiliser un logiciel ou outils de développement, une fois installé. Seulement comment créer et maintenir votre espace de travail à ma façon.

Mon espace de travail est assez simple une fois que vous le comprenez.
J'utilise principalement le 'terminal', des lignes de commandes Unix, ainsi que des logiciels et outils 'free open-source'.

Comme plusieurs qui débutent, j'ai commencé à programmer en utilisant 'Windows' ainsi que des logiciels ou outils 'propriétaires'. Et très souvent, cela nuisait à ma production, puisque ceux-ci n'étaient pas compatibles avec une autre platforme de 'distribution' ou 'système d'opération'; sinon il fallait utiliser une version payante pour obtenir plus de fonctionnalités, etc. C'est très pénible comme expérience. Je ne le vous souhaite pas d'essayer ce parcours.

Aujourd'hui je peux faire toutes mes tâches, à partir de n'importe quelle machine ou système d'opération, de façon efficace.

## 1. Choisir son terminal

Les 3 grandes familles de systèmes d'opération (Windows, MacOS, GNU/Linux) ont tous déjà une application ou émulateur de terminal, installé par défaut. Vous pouvez aussi en installer un autre sur votre machine si vous préférez, tel que iTerm2 ou WarpDotDev, mais faites cela une fois que vous aurez tout lu et vous déciderez par la suite. Personnellement, c'est beaucoup plus une question de goût et d'esthétique.

Un terminal utilise un 'shell', ou plusieurs, pour interpréter des commandes et/ou lire des scripts. Sous MacOS et GNU/Linux vous pouvez utiliser les commandes Unix par défaut, ainsi qu'exécuter des scripts Shell (.sh); cependant sous Windows 11, l'émulateur de terminal utilise PowerShell qui ne comprend pas les commandes Unix par défaut. Vous devrez installer manuellement ces fonctionnalités. **L'idée c'est que vous utilisez les mêmes commandes peut importe le terminal ou système d'opération.**

Sous Windows, il existe une autre application, que je ne vous recommande pas d'utiliser. Pour en être certain, sous Windows 11, nous allons choisir notre émulateur 'Terminal Windows' comme l'application de terminal par défaut.

*Ignorez les 2 étapes ci-dessous, si vous n'utilisez pas Windows 11*

1. La première étape est d'ouvrir les Paramètres puis de chercher l'onglet 'Espaces développeurs'.
![Étape 1](/resources/images/Capture%20d’écran%202024-04-08%20091329.png "Étape 1")

2. La deuxième étape est de choisir l'application 'Terminal Windows'.
![Étape 2](/resources/images/Capture%20d’écran%202024-04-08%20091341.png "Étape 2")

*Ignorez cette étape si vous n'utilisez pas une interface graphique de bureau*

3. La troisième étape est optionnelle, mais vous devriez attacher le Terminal à la barre des tâches, ou créer un 'shortcut' sur votre bureau, ou même créer un 'shortkey' pour ouvrir l'application à partir de votre clavier.
![Étape 3](/resources/images/Capture%20d’écran%202024-04-08%20091427.png "Étape 3")

*Ignorez les 2 étapes ci-dessous, si vous n'utilisez pas Windows 11*

4. La quatrième étape est d'ouvrir le Terminal Windows en tant qu'administrateur. Veuillez utiliser le clic droit de votre souris. Vous serez ensuite amené à choisir Oui.
![Étape 4](/resources/images/Capture%20d’écran%202024-04-08%20091436.png "Étape 4")

5. La cinquième étape consiste à installer WSL 2 (Windows Subsystem Linux 2) avec une commande dans le Terminal. Cela vous permettra, par après, d'utiliser les commandes Unix, d'exécuter des scripts Shell (.sh), d'installer une distribution Linux ou d'utiliser 'Docker', etc. Donc veuillez écrire la commande ci-dessous (*wsl --install*) dans le Terminal puis appuyer sur la toucher Entrée.
![Étape 5](/resources/images/Capture%20d’écran%202024-04-08%20091446.png "Étape 5")

Pour vérifier que vous avez bien installé les fonctionnalités 'Unix' sous Windows 11, veuillez entrer et exécuter la commande suivante dans votre terminal:
```
    ls
```
Celle-ci affichera le dossier courant dans le terminal. C'est comme la commande Windows 'dir'.
- Si une erreur s'affiche, veuillez relire les étapes 1 à 5, vous n'avez pas installé correctement WSL 2 sur votre machine.

## 2. Choisir son Package Manager

Généralement, pour installer un logiciel sur votre machine, vous utilisez un 'browser' tel que Chrome ou Bing (perso je n'utilise pas ceux-ci), puis faire une recherche, puis cliquer sur un lien, et ensuite choisir la bonne application à télécharger pour votre machine, et finalement vous devrez ouvrir l'application pour installer tous les composants nécessaires.

Rien que pour installer, vous avez perdu plusieurs minutes de votre temps. Idem si vous essayez de désinstaller une application de votre bureau.

Les packages managers vous permettent d'avoir une application qui vous facilite l'installation, mises à jour, et désinstallation de logiciels sur votre machine, sans même utiliser un 'browser'. Il existe des packages managers avec une interface graphique, mais généralement ces applications sont utilisées avec le terminal.

Le seul 'hic' c'est que les packages managers ne sont pas tous disponibles sur les 3 grandes familles de systèmes d'opération (Windows, MacOS, GNU/Linux). Alors il vous faudra, pour l'instant, utiliser 1 package manager par système d'opération. 

Ce que j'utilise comme package manager selon le système d'opération:
- [Scoop](https://scoop.sh/) pour Windows 11
- [Homebrew](https://brew.sh/) pour MacOS
- Apt pour GNU/Linux*

*Pour les distributions basées sur Debian (incluant Debian et Ubuntu).

Pour installer Scoop ou Homebrew, veuillez cliquez sur les liens ci-dessus. Il vous faudra entrer 1-2 commandes dans le Terminal puis suivre certains directives avant de compléter l'installation. Pour Apt, si vous utilisez Debian ou Ubuntu sur votre machine alors c'est déjà installé par défaut :) .

Une fois que vous aurez installé le(s) package(s) manager(s), voici brièvement comment les utiliser.

### 2.1. Scoop

- Pour mettre à jour Scoop:
```
    scoop update
```
- Pour afficher les paquets installés:
```
    scoop list
```
- Pour afficher les paquets avec une nouvelle version:
```
    scoop status
```
- Pour installer un paquet local:
```
    scoop install package-name
```
- Pour installer un paquet global:
```
    scoop install --global package-name
```
- Pour mettre à jour un paquet local:
```
    scoop update package-name
```
- Pour mettre à jour un paquet global:
```
    scoop update --global package-name
```
- Pour désinstaller un paquet local:
```
    scoop uninstall package-name
```
- Pour désinstaller un paquet global:
```
    scoop uninstall --global package-name
```
- Pour afficher l'aide
```
    scoop help
```

L'exécution de certaines commandes peuvent nécessiter un administrateur, sinon ces commandes ne pourront s'effectuer. Pour cela, il existe un paquet que je recommende d'installer en premier avec Scoop: **sudo**.

Avec le préfixe sudo, vous pourrez lancer les commandes Scoop en tant qu'administrateur. Il suffit de placer le mot avant la commande Scoop. Ex:
```
    sudo scoop install --global git
```

Voici une petite liste de paquets, non exaustive, que j'installe généralement avec Scoop:
```
sudo
7zip
cmake
vim ou nvim
git
git-lfs
vscode
nodejs
nvm
yarn
python
neofetch
ntop
```

Parfois le système d'opération installe déjà une version plus ancienne et stable d'un certain paquet dans le système. Cela peut parfois créer des conflits dans le Terminal à savoir quelle version utiliser, si vous avez ce genre de conflits et voudriez utiliser votre paquet Scoop plutôt, veuillez l'installer 'globalement', mais veuillez d'abord voir si c'est la bonne approche avec la documentation du paquet en question. Ce qui est bien avec Scoop c'est que les paquets installés n'écrasent pas ceux déjà installé dans le système.

### 2.2. Homebrew

Homebrew peut aussi être installé sur GNU/Linux, ce que vous pourriez faire si vous ne voulez pas utiliser Apt.

Dans le lien ci-haut, un script sera exécuté dans votre Terminal et pourrait demander les droits d'administrateur pour le package manager Homebrew, ce qui pourra vous éviter d'utiliser le préfixe sudo.

- Pour mettre à jour Homebrew:
```
    brew update
```
- Pour afficher les paquets installés:
```
    brew list
```
- Pour afficher les paquets avec une nouvelle version:
```
    brew upgradable
```
- Pour mettre à jour les paquets avec une nouvelle version:
```
    brew upgrade
```
- Pour installer un paquet:
```
    brew install package-name
```
- Pour mettre à jour un paquet:
```
    brew update package-name
```
- Pour désinstaller un paquet:
```
    brew uninstall package-name
```
- Pour afficher l'aide
```
    brew help
```

### 2.3. Apt

La commande sudo existe par défaut dans les systèmes Unix pour demander les droits d'administrateur.

- Pour mettre à jour les paquets installés avec Apt:
```
    sudo apt update
```
- Pour afficher les paquets installés:
```
    sudo apt list
```
- Pour afficher les paquets avec une nouvelle version:
```
    sudo apt list --upgradable
```
- Pour installer un paquet avec Apt:
```
    sudo apt install package-name
```
- Pour désinstaller un paquet avec Apt:
```
    sudo apt remove package-name
```

Grâce à la gestion de paquets, vous aurez plus de facilité à maintenir vos logiciels ou outils de développement, mais aussi plus de contrôle sur ce qui est installé et quand vous le voulez. En effet, plusieurs logiciels se mettent à jour automatiquement avec des programmes de démarrage. Il vaut mieux que vous le fassiez manuellement, disons 1-2 fois par mois, pour des raisons de stabilité et de sécurité.

En résumé, pour installer un paquet (ex: 'python', 'nodejs', 'vscode' ou 'nvim'), vous pourriez le faire directement à partir du Terminal avec un package manager.

## 3. Choisir sa police de charactères

Maintenant que vous avez choisi votre terminal et votre package manager, vous pourriez choisir une police de charactères pour votre terminal. Il est recommendé d'installer les 'NERD Fonts' si vous utilisez Vim ou NeoVim, puisque certains plugins utilisent des emojis qui ne sont pas disponibles dans toutes les polices de charactères.

### 3.1. Installation de la police de charactères

Pour installer et choisir une police de charactères 'NERD Fonts':
- [NERD Fonts](https://github.com/ryanoasis/nerd-fonts/blob/master/readme_fr.md)

Personnellement, j'utilise une police de charactères 'JetBrains Mono', aussi disponible avec les 'NERD Fonts', mais en utilisant le répertoire Git principal:
- [JetBrains Mono](https://github.com/JetBrains/JetBrainsMono)

Donc, il vous faut télécharger ou cloner les fichiers de police de charactères, avec ou sans package manager, puis normalement vous devriez avoir un script d'installation; sinon vous devriez être en mesure de pouvoir double-clic sur une police de charactères pour l'installer dans votre système.

Par exemple, sous Windows 11:

Sélectionnez les polices de charactères que vous voudriez installer et double-cliquez.
![Étape 1 Installation Police de charactères sous Windows 11](/resources/images/Capture%20d’écran%202024-04-09%20100448.png "Étape 1 Installation Police de charactères sous Windows 11")

Une fenètre devrait s'afficher avec une option pour installer la police de charactères dans le système.
![Étape 2 Installation Police de charactères sous Windows 11](/resources/images/Capture%20d’écran%202024-04-09%20100525.png "Étape 2 Installation Police de charactères sous Windows 11")

Par exemple, sous MacOS:

Sélectionnez les polices de charactères que vous voudriez installer et double-cliquez.
![Étape 1 Installation Police de charactères sous MacOS]( "Étape 1 Installation Police de charactères sous MacOS")

Une fenètre devrait s'afficher avec une option pour installer la police de charactères dans le système.
![Étape 2 Installation Police de charactères sous MacOS]( "Étape 2 Installation Police de charactères sous MacOS")

### 3.2. Configuration de la police de charactères pour le terminal

Lorsque l'installation est complétée, il vous faut configurer votre Terminal pour la police de charactères a utiliser pour le 'profil' de votre choix.

Par exemple, sous Windows 11 avec Terminal Windows:

Ouvrez l'application Terminal Windows, et cliquez sur l'icône à côté du symbole '+'.
![Étape 1 Configuration Police de charactères pour Terminal Windows](/resources/images/Capture%20d’écran%202024-04-09%20100022.png "Étape 1 Configuration Police de charactères pour Terminal Windows")

Cliquez sur Paramètres.
![Étape 2 Configuration Police de charactères pour Terminal Windows](/resources/images/Capture%20d’écran%202024-04-09%20100110.png "Étape 2 Configuration Police de charactères pour Terminal Windows")

Cliquez sur le profil par défaut (ou de votre choix) puis sur Apparences dans les Paramètres supplémentaires.
![Étape 3 Configuration Police de charactères pour Terminal Windows](/resources/images/Capture%20d’écran%202024-04-09%20100203.png "Étape 3 Configuration Police de charactères pour Terminal Windows")

Sélectionnez la police de charactères de votre choix.
![Étape 4 Configuration Police de charactères pour Terminal Windows](/resources/images/Capture%20d’écran%202024-04-09%20100620.png "Étape 4 Configuration Police de charactères pour Terminal Windows")

Assurez-vous de sauvegarder vos changements pour les paramètres du Terminal.
![Étape 5 Configuration Police de charactères pour Terminal Windows](/resources/images/Capture%20d’écran%202024-04-09%20100713.png "Étape 5 Configuration Police de charactères pour Terminal Windows")

Par exemple, sous MacOS avec le Terminal:

Ouvrez l'application Terminal, et en haut à gauche, cliquez sur Terminal et Réglages.
Vous devriez voir une option 'Police' et un bouton 'Modifier...', cliquez sur ce bouton.
Par la suite, je vous suggère de choisir l'option 'Toutes les Polices' pour voir vos polices de charactères.
![Étape 1 Configuration Police de charactères pour Terminal MacOS]( "Étape 1 Configuration Police de charactères pour Terminal MacOS")