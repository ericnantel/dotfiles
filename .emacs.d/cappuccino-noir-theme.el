;;; cappuccino-noir-theme.el --- Coffee at night
;;; Version: 1.0
;;; Commentary:
;;; A night theme that feels like morning cup of coffee.
;;; Code:

(let ((main-bg              "#170e0b")
      (main-fg              "#e4c3ab")
      (contrast-fg          "#f1daca")

      (cappu-1  "#25150f")
      (cappu-2  "#351e17")
      (cappu-3  "#482c22")
      (cappu-4  "#633f33")
      (cappu-5  "#956758")

      (c1 "#DDB680")
      (c2 "#f59c20")
      (c3 "#F5AA73")
      (c4 "#C8DAD6")
      (c5 "#c1d2e2")
      (c6 "#EFB78E")

      (ceramic "#fcfff9")
      (youthful-coral "#ec7e70")
      (blue-rice "#96b9ea")
      (cool-cyan "#7DDBD0")
      (ethereal-green "#cbc8b1")

      (modeline-padding 6))

  (deftheme cappuccino-noir
    "A night theme that feels like morning cup of coffee.")

  (custom-theme-set-faces
   'cappuccino-noir

   `(default ((t (:foreground ,main-fg :background ,main-bg ))))
   `(cursor ((t (:background ,main-fg ))))

   `(region ((t (:background ,cappu-3 ))))

   `(ansi-color-black ((t (:foreground ,cappu-1 :background ,cappu-1))))
   `(ansi-color-red ((t (:foregrund ,youthful-coral :background ,youthful-coral))))
   `(ansi-color-green ((t (:foreground ,ethereal-green :background ,ethereal-green))))
   `(ansi-color-yellow ((t (:foreground ,c1 :background ,c1))))
   `(ansi-color-blue ((t (:foreground ,blue-rice :background ,blue-rice))))
   ;; `(ansi-color-magenta ((t (:foreground ,cotton-candy :background ,cotton-candy))))
   `(ansi-color-cyan ((t (:foreground ,cool-cyan :background ,cool-cyan))))
   `(ansi-color-white ((t (:foreground ,ceramic :background ,ceramic))))

   `(success ((t (:foreground ,ethereal-green :weight bold))))
   `(warning ((t (:foreground ,youthful-coral :weight bold))))

   `(line-number ((t (:inherit default :foreground ,cappu-4 ))))
   `(line-number-current-line ((t (:inherit default :foreground ,cappu-5 ))))

   `(highlight ((t (:background ,cappu-3 ))))
   `(secondary-selection ((t (:background ,cappu-4 ))))

   `(fringe ((t (:background ,main-bg))))

   `(mode-line ((t (:foreground ,main-fg :background ,cappu-3
                    :box (:line-width ,modeline-padding :color ,cappu-3 :style nil) ))))
   `(mode-line-inactive ((t (:background ,cappu-2
                             :box (:line-width ,modeline-padding :color ,cappu-2 :style nil)))))
   `(mode-line-buffer-id ((t (:bold t :foreground ,contrast-fg ))))

   `(vertical-border ((t (:foreground ,cappu-2 ))))

   `(trailing-whitespace ((t (:background ,youthful-coral ))))

   `(font-lock-builtin-face ((t (:foreground ,c4 ))))
   `(font-lock-preprocessor-face ((t (:foreground ,ethereal-green :bold t ))))
   `(font-lock-comment-face ((t (:foreground ,cappu-5 :slant italic ))))
   `(font-lock-comment-delimiter-face ((t (:foreground ,cappu-4 :slant italic ))))
   `(font-lock-doc-face ((t (:foreground ,c6 ))))
   ;; `(font-lock-doc-markup-face ((t (:foreground ,light-violet ))))
   ;; `(font-lock-punctuation-face ((t (:foreground ,main-fg ))))
   ;; `(font-lock-delimiter-face ((t (:foreground ,main-fg ))))
   `(font-lock-type-face ((t (:foreground ,c1 ))))
   `(font-lock-function-name-face ((t (:foreground ,c2 ))))
   `(font-lock-variable-name-face ((t (:foreground ,c3 ))))
   `(font-lock-keyword-face ((t (:foreground ,youthful-coral ))))
   `(font-lock-string-face ((t (:foreground ,c5 ))))
   ;; `(font-lock-escape-face ((t (:foreground ,old-green-wall ))))
   `(font-lock-negation-char-face ((t (:foreground ,youthful-coral ))))
   `(font-lock-number-face ((t (:foreground ,ethereal-green ))))
   `(font-lock-constant-face ((t (:foreground ,ethereal-green ))))
   ;; `(font-lock-regexp-face ((t (:foreground ,cotton-candy ))))
   `(font-lock-warning-face ((t (:foreground ,youthful-coral :bold t ))))

   `(minibuffer-prompt ((t (:foreground ,c1 :bold t ))))
   `(hl-line ((t (:background ,cappu-1 ))))

   '(italic ((t (:slant italic :underline nil))))

   ;; Matches
   '(match ((t nil)))
   '(show-paren-match ((t (:inverse-video t))))

   ;; Clickable elements
   `(link ((t (:foreground ,cool-cyan :underline t ))))
   `(custom-button ((t (:foreground ,c3 :box (:line-width 2) :height 0.9 ))))
   `(custom-button-mouse ((t (:foreground ,cool-cyan :box (:line-width 2) :height 0.9 ))))

   ;; ;; Dired mode
   ;; `(dired-header ((t (:foreground ,keyword-yellow ))))
   `(dired-broken-symlink ((t (:foreground ,youthful-coral :inverse-video t ))))

   ;; ;; Org mode
   ;; `(org-code ((t (:foreground ,modern-blue ))))
   ;; `(org-verbatim ((t (:foreground ,modern-blue ))))
   ;; `(org-block ((t (:background ,subtle-difference ))))

   `(org-todo ((t (:foreground ,youthful-coral ))))
   `(org-done ((t (:foreground ,ethereal-green ))))

   ;; ;; Org agenda
   ;; `(org-agenda-date ((t (:inherit nil :foreground ,modern-blue :height 1.4 ))))
   ;; `(org-agenda-date-today ((t (:inherit nil :underline t :foreground ,modern-blue ))))
   ;; `(org-agenda-diary ((t (:foreground ,old-green-wall ))))

   ;; Eshell
   `(eshell-prompt ((t (:foreground ,blue-rice :bold t ))))

   ;; ;; Key cast package
   ;; `(keycast-key ((t (:box nil :foreground ,main-bg :background ,champagne ))))

   ;; ;; Tab bars
   `(tab-bar ((t (:background ,main-bg :foreground ,main-fg
                  ;; :underline ,modeline-bg
                  :height 1.0))))
   `(tab-bar-tab ((t (:background ,cappu-3 :box ,cappu-3 ))))
   `(tab-bar-tab-inactive ((t (:background ,cappu-1 :box ,cappu-1 ))))

   ;; Eglot
   `(eglot-highlight-symbol-face ((t (:inherit t :background ,cappu-4 ))))

   )


;;;###autoload
  (and load-file-name
       (boundp 'custom-theme-load-path)
       (add-to-list 'custom-theme-load-path
                    (file-name-as-directory
                     (file-name-directory load-file-name))))

  (provide-theme 'cappuccino-noir))

;;; cappuccino-noir-theme.el ends here
