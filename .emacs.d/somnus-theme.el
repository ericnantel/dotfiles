;;; somnus-theme.el --- The perfect companion for Emacs at night
;;; Version: 1.0
;;; Commentary:
;;; A theme to focus and not to strain your eyes during a late night
;;; software development session.
;;; Code:

(let ((main-bg              "#090e13")
      (main-fg              "#dee8f1")

      (modeline-bg          "#24384b")
      (modeline-bg-inactive "#162330")
      (subtle-difference    "#0c1319")

      (light-violet         "#dabdfc")
      (cold-lips            "#bdbffc")
      (liliac               "#bfb5ff")
      (pineapple            "#e8d283")
      (champagne            "#e2d7ae")
      (keyword-yellow       "#f1d384")
      (make-up              "#e2bbae")
      (almost-grey          "#ccc9c9")
      (cotton-candy         "#f5c5d1")
      (autumn               "#ffb951")
      (meh-blue             "#aac7e0")
      (region-blue          "#225487")
      (modern-blue          "#b7d0ea")
      (nice-blue            "#9dcdff")
      (link-cyan            "#14e5e5")
      (salmonish            "#ff8660")
      (old-green-wall       "#aad2ae")
      (almost-black         "#05080a")

      (modeline-padding 6))

  (deftheme somnus "A theme to focus and not to strain your eyes during a late night
software development session.")

  (custom-theme-set-faces
   'somnus

   `(default ((t (:foreground ,main-fg :background ,main-bg ))))
   `(cursor ((t (:background ,pineapple ))))

   `(region ((t (:background ,modeline-bg ))))

   `(ansi-color-black ((t (:foreground ,almost-black :background ,almost-black))))
   `(ansi-color-red ((t (:foreground ,salmonish :background ,salmonish))))
   `(ansi-color-green ((t (:foreground ,old-green-wall :background ,old-green-wall))))
   `(ansi-color-yellow ((t (:foreground ,keyword-yellow :background ,keyword-yellow))))
   `(ansi-color-blue ((t (:foreground ,region-blue :background ,region-blue))))
   `(ansi-color-magenta ((t (:foreground ,cotton-candy :background ,cotton-candy))))
   `(ansi-color-cyan ((t (:foreground ,nice-blue :background ,nice-blue))))
   `(ansi-color-white ((t (:foreground ,main-fg :background ,main-fg))))

   `(success ((t (:foreground ,old-green-wall :weight bold))))
   `(warning ((t (:foreground ,salmonish :weight bold))))

   `(line-number ((t (:inherit default :foreground ,almost-grey ))))
   `(line-number-current-line ((t (:inherit default :foreground ,almost-grey ))))

   `(highlight ((t (:background ,modeline-bg ))))
   `(secondary-selection ((t (:background ,modeline-bg-inactive ))))

   `(fringe ((t (:background ,main-bg))))

   `(mode-line ((t (:foreground ,main-fg :background ,modeline-bg
                    :box (:line-width ,modeline-padding :color ,modeline-bg :style nil) ))))
   `(mode-line-inactive ((t (:background ,modeline-bg-inactive
                             :box (:line-width ,modeline-padding :color ,modeline-bg-inactive :style nil)))))
   `(mode-line-buffer-id ((t (:bold t :foreground ,main-fg ))))

   `(vertical-border ((t (:foreground ,modeline-bg ))))

   `(trailing-whitespace ((t (:background ,salmonish ))))

   `(font-lock-builtin-face ((t (:foreground ,liliac ))))
   `(font-lock-preprocessor-face ((t (:foreground ,liliac :bold t ))))
   `(font-lock-comment-face ((t (:foreground ,make-up :slant italic ))))
   `(font-lock-comment-delimiter-face ((t (:foreground ,almost-grey :slant italic ))))
   `(font-lock-doc-face ((t (:foreground ,cold-lips ))))
   `(font-lock-doc-markup-face ((t (:foreground ,light-violet ))))
   `(font-lock-punctuation-face ((t (:foreground ,main-fg ))))
   `(font-lock-delimiter-face ((t (:foreground ,main-fg ))))
   `(font-lock-type-face ((t (:foreground ,champagne ))))
   `(font-lock-function-name-face ((t (:foreground ,nice-blue ))))
   `(font-lock-variable-name-face ((t (:foreground ,modern-blue ))))
   `(font-lock-keyword-face ((t (:foreground ,keyword-yellow ))))
   `(font-lock-string-face ((t (:foreground ,cotton-candy ))))
   `(font-lock-escape-face ((t (:foreground ,old-green-wall ))))
   `(font-lock-negation-char-face ((t (:foreground ,autumn ))))
   `(font-lock-number-face ((t (:foreground ,autumn ))))
   `(font-lock-constant-face ((t (:foreground ,autumn ))))
   `(font-lock-regexp-face ((t (:foreground ,cotton-candy ))))
   `(font-lock-warning-face ((t (:foreground ,salmonish :bold t ))))

   `(minibuffer-prompt ((t (:foreground ,nice-blue :bold t ))))
   `(hl-line ((t (:background ,subtle-difference ))))

   '(italic ((t (:slant italic :underline nil))))

   ;; Matches
   '(match ((t nil)))
   '(show-paren-match ((t (:inverse-video t))))

   ;; Clickable elements
   `(link ((t (:foreground ,link-cyan :underline t ))))
   `(custom-button ((t (:foreground ,meh-blue :box (:line-width 2) :height 0.9 ))))
   `(custom-button-mouse ((t (:foreground ,meh-blue :box (:line-width 2) :height 0.9 ))))

   ;; Dired mode
   `(dired-header ((t (:foreground ,keyword-yellow ))))
   `(dired-broken-symlink ((t (:foreground ,salmonish :inverse-video t ))))

   ;; Org mode
   `(org-code ((t (:foreground ,modern-blue ))))
   `(org-verbatim ((t (:foreground ,modern-blue ))))
   `(org-block ((t (:background ,subtle-difference ))))

   `(org-todo ((t (:foreground ,salmonish ))))
   `(org-done ((t (:foreground ,old-green-wall ))))

   ;; Org agenda
   `(org-agenda-date ((t (:inherit nil :foreground ,modern-blue :height 1.4 ))))
   `(org-agenda-date-today ((t (:inherit nil :underline t :foreground ,modern-blue ))))
   `(org-agenda-diary ((t (:foreground ,old-green-wall ))))

   ;; Eshell
   `(eshell-prompt ((t (:foreground ,keyword-yellow :bold t ))))

   ;; Key cast package
   `(keycast-key ((t (:box nil :foreground ,main-bg :background ,champagne ))))

   ;; Pulsar package
   `(pulsar-generic ((t (:background ,autumn ))))

   ;; Tab bars
   `(tab-bar ((t (:background ,main-bg :foreground ,main-fg
                  ;; :underline ,modeline-bg
                  :height 1.0))))
   `(tab-bar-tab ((t (:background ,modeline-bg :box ,modeline-bg ))))
   `(tab-bar-tab-inactive ((t (:background ,main-bg :box nil ))))
   )


;;;###autoload
  (and load-file-name
       (boundp 'custom-theme-load-path)
       (add-to-list 'custom-theme-load-path
                    (file-name-as-directory
                     (file-name-directory load-file-name))))

  (provide-theme 'somnus))

;;; somnus-theme.el ends here
