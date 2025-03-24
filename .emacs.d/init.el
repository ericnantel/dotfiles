
;; hide splash screen
(setq inhibit-splash-screen t)

;; hide flash bell
(setq visible-bell nil)

;; disable cursor blink
(setq blink-cursor-mode nil)

;; disable dialog pop-up
(setq use-dialog-box nil)

;; remember last cursor location of opened files
(save-place-mode 1)

;; revert buffers when underlying file has changed
(global-auto-revert-mode 1)

;; revert Dired and other buffers
(setq global-auto-revert-non-file-buffers t)

;; hide other ui elements
(menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)

;; show line numbers
(global-display-line-numbers-mode 1)
(global-visual-line-mode t)

;; (font-lock-mode 1)
;; (transient-mark-mode 1)
;; (add-hook 'org-mode-hook #'turn-on-font-lock)

;; custom file
(setq custom-file (locate-user-emacs-file "custom-vars.el"))
(load custom-file 'noerror 'nomessage)

;; encoding
(set-language-environment "UTF-8")
(prefer-coding-system 'utf-8)
(set-default-coding-systems 'utf-8)
(set-terminal-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8)
(setq org-export-coding-system 'utf-8)
(setq default-buffer-file-coding-system 'utf-8)

;; package-management
(custom-set-variables '(package-archives
						 '(("melpa" . "https://melpa.org/packages/")
						   ("elpa" . "https://elpa.gnu.org/packages/"))))

;; font
;; NOTE: Comment or replace :font if necessary
;; NOTE: Make sure to use a font that has italic
;; TODO: Verify height on Windows or GNU/Linux
(set-face-attribute 'default nil
					 :font "JetBrains Mono"
					 :height 160)
(set-face-attribute 'font-lock-comment-face nil
					:slant 'italic)
(set-face-attribute 'font-lock-keyword-face nil
					:slant 'italic)

;; status bar
;; NOTE: Icons are a bit wierd here..
;; (use-package ergoemacs-status
;; 			 :config
;; 			 (ergoemacs-status-mode))

;; night-owl theme
(use-package night-owl-theme
			 :ensure t
			 :pin melpa
			 :init
			 (load-theme 'night-owl t))

;; exotica theme
;; (use-package exotica-theme
;; 			 :ensure t
;; 			 :pin melpa
;; 			 :init
;; 			 (load-theme 'exotica t))

;; nordic night theme
;; (use-package nordic-night-theme
;; 			 :ensure t
;; 			 :pin melpa
;; 			 :init
;; 			 (load-theme 'nordic-night t))

;; doom themes
;; (use-package doom-themes
;; 			 :ensure t
;; 			 :pin melpa
;; 			 :config
;; 			 (setq doom-themes-enable-bold t)
;; 			 (setq doom-themes-enable-italic t)
;; 			 (load-theme 'doom-one t)
;; 			 ;; Corrects (and improves) org-mode's native fontification
;; 			 (doom-themes-org-config))

;; modus themes
;; (load-theme 'modus-vivendi-tinted t)

;; cappuccino-noir theme
;; NOTE: Available at https://gligan.net/emacs-themes
;; (load-theme 'cappuccino-noir t)

;; somnus theme
;; NOTE: Available at https://gligan.net/emacs-themes
;; (load-theme 'somnus t)

;; catppuccin theme
;; (use-package catppuccin-theme
;; 			 :ensure t
;; 			 :pin melpa
;; 			 :init
;; 			 (load-theme 'catppuccin :no-confirm))

;; background opacity
;; TODO: Fix background issue on Ubuntu
;; NOTE: First value is when focused; vs not-focused
;; (set-frame-parameter (selected-frame) 'alpha '(80 . 80))
;; (add-to-list 'default-frame-alist '(alpha . (80 . 80)))

;; tree-sitter
;; NOTE: M-x treesit-install-language-grammar
;; (setq treesit-language-source-alist
;; 	  '((elisp "https://github.com/Wilfred/tree-sitter-elisp")))

;; org-mode
(require 'org)
(require 'org-agenda)
(require 'org-capture)
(require 'org-mobile)

;; TODO: Replace with C-c o a like <leader>oa (action open agenda)

(global-set-key (kbd "C-c l") #'org-store-link)
(global-set-key (kbd "C-c a") #'org-agenda)
(global-set-key (kbd "C-c c") #'org-capture)

;; (setq org-directory "~/Notes/org")
(setq org-directory "~/Notes/orgfiles")
(setopt org-startup-indented t
		org-ellipsis " ▼"
		org-hide-emphasis-markers t
		org-pretty-entities t
		org-src-fontify-natively t
		org-fontify-whole-heading-line t
		org-fontify-quote-and-verse-blocks t
		ord-edit-src-content-indentation 0
		org-hide-block-startup nil
		org-src-tab-acts-natively t
		org-src-preserve-indentation nil
		;; org-startup-folded t
		org-cycle-separator-lines 2
		org-hide-leading-stars t
		org-highlight-latex-and-related '(native)
		org-goto-auto-isearch nil)
(setq org-log-done 'time)
(setq org-log-into-drawer t)
(setq org-startup-folded t)

(setq org-agenda-files (list (concat org-directory "/personal.org")
							 (concat org-directory "/work.org")
							 (concat org-directory "/school.org")
							 (concat org-directory "/diary.org")))
(setq org-agenda-include-diary nil) ; NOTE: We are including calendar holidays in diary.org
(setq org-agenda-span 7)
(setq org-agenda-start-on-weekday nil)
(setq org-agenda-start-day "-1d")
(setq org-agenda-start-with-log-mode t)
;; TODO: org-agenda-custom-commands
(setq org-agenda-window-setup 'only-window)

(setq org-default-notes-file (concat org-directory "/refile.org"))
(setq org-capture-templates
	  '(("t" "Refile" entry (file (lambda () (concat org-directory "/refile.org")))
		 "* TODO %?\n %U\n" :empty-lines 1)
		("p" "Personal" entry (file (lambda () (concat org-directory "/personal.org")))
		 "* TODO %?\n %U\n" :empty-lines 1)
		("w" "Work" entry (file (lambda () (concat org-directory "/work.org")))
		 "* TODO %?\n %U\n" :empty-lines 1)
		("s" "School" entry (file (lambda () (concat org-directory "/school.org")))
		 "* TODO %?\n %U\n" :empty-lines 1)))

(setq org-mobile-directory "~/Dropbox/Apps/MobileOrg")
;; (setq org-mobile-directory "~/Dropbox/Applications/MobileOrg")
(setq org-mobile-use-encryption nil)
;; (setq org-mobile-encryption-password "")
;; (setq org-mobile-files (list ()))
(setq org-mobile-force-id-on-agenda-items nil)
(setq org-mobile-inbox-for-pull (concat org-directory "/mobile-flagged.org"))

;; (setq-default org-enforce-todo-dependencies t)
;; (setq-default org-export-with-todo-keywords nil)

;; org-bullets
(use-package org-bullets
			 :ensure t
			 :config
			 (add-hook 'org-mode-hook (lambda () (org-bullets-mode 1))))


;; org-indent
;; (use-package org-indent
;; 			 :ensure nil
;; 			 :diminish
;; 			 :custom
;; 			 (org-indent-indentation-per-level 4))

;; which-key
(use-package which-key
			 :defer nil
			 :diminish which-key-mode
			 :config
			 (which-key-mode))
