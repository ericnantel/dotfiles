
;; (setq inhibit-splash-screen t)

;; (transient-mark-mode 1)

;; encoding
(set-language-environment "UTF-8")
(prefer-coding-system 'utf-8)
(set-default-coding-systems 'utf-8)
(set-terminal-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8)
(setq default-buffer-file-coding-system 'utf-8)

;; package-management
(custom-set-variables '(package-archives
						 '(("melpa"     . "https://melpa.org/packages/")
						   ("elpa"      . "https://elpa.gnu.org/packages/"))))

;; org-mode
(require 'org)

;;(org-directory "~/org")

(global-set-key (kbd "C-c l") #'org-store-link)
(global-set-key (kbd "C-c a") #'org-agenda)
(global-set-key (kbd "C-c c") #'org-capture)

(setq-default org-enforce-todo-dependencies t)

(setq-default org-export-with-todo-keywords nil)

(setq org-hide-emphasis-markers t)
(setq org-log-done 'time)
(setq org-log-into-drawer t)
(setq org-startup-indented t)

;; org-bullets
(use-package org-bullets
			 :ensure t
			 :config
			 (add-hook 'org-mode-hook (lambda () (org-bullets-mode 1))))

(setq org-hide-leading-stars t)

;; org-indent
(use-package org-indent
			 :ensure nil
			 :diminish
			 :custom
			 (org-indent-indentation-per-level 4))

;; which-key
(use-package which-key
			 :defer nil
			 :diminish which-key-mode
			 :config
			 (which-key-mode))
