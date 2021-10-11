;;; code:  -*- lexical-binding: t; -*-
(deftheme plattfot
  "Color theme with the roots from sunburst-theme.

But have mutated to its own over the years. Trying to keep colors
to a minimum.")

(defgroup plattfot-theme nil
  "Group for the plattfot theme"
  :group 'faces)

(defcustom plt-blue "#3387cc"
  "Main blue color of the plattfot theme."
  :type 'string
  :group 'plattfot-theme)

(defcustom plt-green "#99cf50"
  "Main green color of the plattfot theme."
  :type 'string
  :group 'plattfot-theme)

(defcustom plt-yellow "#e9c062"
  "Main yellow color of the plattfot theme."
  :type 'string
  :group 'plattfot-theme)

(defcustom plt-red "#cc333b"
  "Main red color of the plattfot theme."
  :type 'string
  :group 'plattfot-theme)

(defcustom plt-purple "#a020f0"
  "Main purple color of the plattfot theme."
  :type 'string
  :group 'plattfot-theme)

(defcustom plt-dark-purple "#663399"
  "Main dark purplish color of the plattfot theme."
  :type 'string
  :group 'plattfot-theme)

(defcustom plt-metadata "#666"
  "Color for metadata of the plattfot theme.

E.g. comments, org mode tags etc"
  :type 'string
  :group 'plattfot-theme)

(defun plattfot-theme--metadata (face)
  "Fade the FACE into the background."
  `(,face ((t (:foreground ,plt-metadata)))))

(custom-theme-set-faces
 'plattfot
 (if window-system `(default ((t (:background "#111" :foreground "#ddd"))))
   `(default ((t (:foreground "#ddd")))))
 `(blue ((t (:foreground "blue"))))
 `(cursor ((t (:background "#fff"))))
 `(bold ((t (:bold t))))
 `(bold-italic ((t (:bold t :slant italic))))
 `(border-glyph ((t (nil))))
 `(vertical-border ((t (:background "#111" :foreground "#222"))))
 `(fringe  ((t (:background "#111"))))
 `(link ((t (:foreground ,plt-blue :underline t))))
 (plattfot-theme--metadata  'escape-glyph)
 (plattfot-theme--metadata 'nobreak-hyphen)
 ;; Info
 `(Info-quoted ((t (:foreground "dark gray"))))
 `(info-menu-star ((t (:foreground ,plt-yellow))))
 `(link-visited ((t (:foreground "violet" :inherit link))))
 `(mode-line-inactive  ((t (:background "#222" :foreground "#666"))))
 `(mode-line           ((t (:background "#222" :foreground ,plt-blue))))
 ;; eglot
 `(eglot-mode-line     ((t (:inherit mode-line-inactive))))

 ;; compilation
 `(compilation-mode-line-run ((t (:background "#222" :foreground ,plt-blue))))
 `(compilation-error ((t (:foreground ,plt-red))))
 `(compilation-warning ((t (:foreground ,plt-yellow))))
 `(compilation-info ((t (:foreground ,plt-green))))

 ;; mini buff
 `(minibuffer-prompt ((t (:foreground "#ddd" :bold t :background nil))))
 `(trailing-whitespace ((t (:background ,plt-red))))

 ;; Org-mode list and other outline things
 `(outline-1 ((t (:foreground "dark gray" :bold t :height 1.16))))
 `(outline-2 ((t (:inherit outline-1))))
 `(outline-3 ((t (:inherit outline-1))))
 `(outline-4 ((t (:inherit outline-1))))
 `(outline-5 ((t (:inherit outline-1))))
 `(outline-6 ((t (:inherit outline-1))))
 `(outline-7 ((t (:inherit outline-1))))
 `(outline-8 ((t (:inherit outline-1))))
 `(org-ellipsis ((t (:foreground ,plt-yellow))))
 (plattfot-theme--metadata 'org-tag)
 (plattfot-theme--metadata 'org-checkbox-statistics-todo)
 (plattfot-theme--metadata 'org-priority)
 (plattfot-theme--metadata 'org-special-keyword)
 (plattfot-theme--metadata 'org-date)
 (plattfot-theme--metadata 'org-agenda-done)

 ;; Org agenda
 `(org-agenda-date ((t (:foreground "#ddd"))))
 `(org-agenda-date-weekend ((t (:foreground "#ddd"))))
 `(org-warning ((t (:foreground ,plt-red))))
 `(org-super-agenda-header ((t (:foreground ,plt-blue))))

 `(org-scheduled-previously ((t (:foreground "dark gray" :bold t))))
 `(org-scheduled-today ((t (:foreground "#ffffff"))))
 `(org-scheduled ((t (:foreground "dark gray"))))

 `(org-todo ((t (:foreground "pink" :bold t))))
 `(org-done ((t (:foreground ,plt-green :bold t))))
 `(org-code ((t (:foreground ,plt-green :bold t))))
 `(org-document-title ((t (:foreground ,plt-blue :bold t))))
 `(buffers-tab ((t (:background "#111" :foreground "#ddd"))))
 `(font-lock-builtin-face ((t (:foreground "#dd7b3b"))))
 (plattfot-theme--metadata 'font-lock-comment-face)
 `(font-lock-constant-face ((t (:foreground ,plt-green))))
 `(font-lock-doc-string-face ((t (:foreground "#9b859d"))))
 `(font-lock-function-name-face ((t (:foreground ,plt-yellow :bold t))))
 `(font-lock-keyword-face ((t (:foreground "#cf6a4c" :bold t))))
 `(font-lock-preprocessor-face ((t (:foreground "#aeaeae"))))
 `(font-lock-reference-face ((t (:foreground "#8b98ab"))))
 `(font-lock-string-face ((t (:foreground "#65b042"))))
 `(font-lock-type-face ((t (:foreground "#c5af75"))))
 `(font-lock-variable-name-face ((t (:foreground ,plt-blue))))
 `(font-lock-warning-face ((t (:bold t :background "#420e09" :foreground "#eeeeee"))))
 ;; ERC
 `(erc-current-nick-face ((t (:foreground "#aeaeae"))))
 `(erc-default-face ((t (:foreground "#ddd"))))
 `(erc-keyword-face ((t (:foreground "#cf6a4c"))))
 `(erc-notice-face ((t (:foreground "#666"))))
 `(erc-timestamp-face ((t (:foreground "#65b042"))))
 `(erc-underline-face ((t (:foreground "#c5af75"))))
 ;; Message
 `(message-header-name ((t (:foreground ,plt-blue))))
 `(message-header-other ((t (:foreground "#ddd" :bold t))))
 `(message-header-to ((t (:inherit message-header-other))))
 `(message-header-subject ((t (:foreground ,plt-yellow :bold t))))
 `(message-header-cc ((t (:inherit message-header-other))))
 (plattfot-theme--metadata 'message-separator)
 (plattfot-theme--metadata 'message-signature-separator)
 ;; Magit
 `(magit-log-sha1 ((t (:foreground "#cf6a4c"))))
 `(magit-log-head-label-local ((t (:foreground ,plt-blue))))
 `(magit-log-head-label-remote ((t (:foreground "#65b042"))))
 `(magit-branch ((t (:foreground ,plt-yellow))))
 `(magit-section-title ((t (:foreground "#9b859d"))))
 `(magit-item-highlight ((t (:background "#1f1f1f"))))
 `(gui-element ((t (:background "#0e2231" :foreground "black"))))
 `(highlight ((t (:bold t :slant italic))))
 `(highline-face ((t (:background "#4a410d"))))
 `(italic ((t (nil))))
 `(left-margin ((t (nil))))
 `(mmm-default-submode-face ((t (:background "#111"))))
 `(mode-line ((t (:background "#e6e5e4" :foreground "black"))))
 `(primary-selection ((t (:background "#222"))))
 `(region ((t (:background "#4a410d"))))
 `(text-cursor ((t (:background "yellow" :foreground "black"))))
 `(underline ((nil (:underline nil))))
 ;; term
 `(term-color-black ((t (:foreground "#4d4d4d" :background "#333333"))))
 `(term-color-red ((t (:foreground "#D81860" :background "#F00060"))))
 `(term-color-green ((t (:foreground "#60FF60" :background "#70FF70"))))
 `(term-color-yellow ((t (:foreground "#f9fd75" :background "#f9fd80"))))
 `(term-color-blue ((t (:foreground "#4695c8" :background ,plt-blue))))
 `(term-color-magenta ((t (:foreground "#a78edb" :background "#b29fdb"))))
 `(term-color-cyan ((t (:foreground "#43afce" :background "#69b8ce"))))
 `(term-color-white ((t (:foreground "#f3ebe2" :background "#eeeeee"))))
 `(term-default-fg-color ((t (:inherit term-color-white))))
 `(term-default-bg-color ((t (:inherit term-color-black))))
 ;; Company
 `(company-tooltip ((t (:inherit default :background "#222"))))
 `(company-tooltip-selection ((t (:inherit default :background ,plt-blue))))
 `(company-tooltip-common
   ((t (:inherit font-lock-constant-face :foreground "#ddd" :bold t :underline t))))
 (plattfot-theme--metadata  'company-tooltip-annotation)
 `(company-scrollbar-bg ((t (:background "#222"))))
 `(company-scrollbar-fg ((t (:background "#666"))))
 `(company-preview  ((t (:inherit font-lock-comment-face :underline t ))))
 `(company-preview-common  ((t (:inherit font-lock-comment-face :underline t ))))
 `(company-template-field ((t (:inherit match))))
 `(company-preview-search ((t (:inherit 'company-tooltip-search))))

 ;; Auto-complete
 `(ac-completion-face ((t (:inherit default :foreground "#666" :underline t))))
 `(ac-candidate-face ((t (:background "#222"))))
 `(ac-selection-face ((t (:foreground "#ddd" :background ,plt-blue))))
 `(popup-tip-face ((t (:foreground "#ddd" :background "#222"))))
 `(popup-menu-mouse-face ((t (:foreground ,plt-blue :background "#222"))))
 `(popup-summary-face ((t (:foreground "#666" :background "#222"))))
 `(popup-scroll-bar-foreground-face ((t (:background "#666"))))
 `(popup-scroll-bar-background-face ((t (:background "#222"))))
 `(popup-isearch-match ((t (:foreground "#666" :background "#222"))))

 ;; Tooltip
 `(tooltip ((t (:inherit variable-pitch :background "#222" :foreground "#666"))))

 ;; Elfeed
 (plattfot-theme--metadata 'elfeed-search-feed-face)
 (plattfot-theme--metadata 'elfeed-search-date-face)
 `(elfeed-search-title-face ((t (:foreground "#CCC" :weight bold))))
 `(elfeed-search-unread-title-face ((t (:foreground "#fff" :weight bold))))
 `(elfeed-search-tag-face ((t (:foreground ,plt-green))))

 ;; Ediff
 `(ediff-current-diff-A ((t (:background "gray20"))))
 `(ediff-current-diff-Ancestor ((t (:background "gray20"))))
 `(ediff-current-diff-B ((t (:background "gray20"))))
 `(ediff-current-diff-C ((t (:background "gray20"))))
 `(ediff-even-diff-A ((t (:background "gray11"))))
 `(ediff-even-diff-Ancestor ((t (:background "gray11"))))
 `(ediff-even-diff-B ((t (:background "gray11"))))
 `(ediff-even-diff-C ((t (:background "gray11"))))
 `(ediff-fine-diff-A ((t (:background ,plt-dark-purple))))
 `(ediff-fine-diff-Ancestor ((t (:background ,plt-dark-purple))))
 `(ediff-fine-diff-B ((t (:background ,plt-dark-purple))))
 `(ediff-fine-diff-C ((t (:background ,plt-dark-purple))))
 `(ediff-odd-diff-A ((t (:background "gray11"))))
 `(ediff-odd-diff-Ancestor ((t (:background "gray11"))))
 `(ediff-odd-diff-B ((t (:background "gray11"))))
 `(ediff-odd-diff-C ((t (:background "gray11"))))
 ;; Popup
 `(popup-menu-face ((t (:foreground "#ddd" :background "#222"))))
 `(popup-menu-summary-face ((t (:foreground "#ddd" :background "#222"))))
 `(popup-tip-face ((t (:foreground "#ddd" :background "#222"))))
 `(popup-face ((t (:foreground "#ddd" :background "#222"))))
 `(popup-isearch-match ((t (:foreground ,plt-blue :background "#222"))))
 `(popup-menu-selection-face ((t (:foreground "#111" :background ,plt-blue :weight bold))))
 `(popup-menu-mouse-face ((t (:foreground "#111" :background "steelblue"))))
 (plattfot-theme--metadata 'fill-column-indicator)
 `(selectrum-current-candidate ((t (:foreground "#222" :background ,plt-blue))))
 `(vertico-current ((t (:foreground "#222" :background ,plt-blue))))
 `(corfu-current ((t (:foreground "#222" :background ,plt-blue))))
 `(orderless-match-face-0 ((t (:weight bold :underline t))))
 `(orderless-match-face-1 ((t (:weight bold :underline ,plt-green))))
 `(orderless-match-face-2 ((t (:weight bold :underline ,plt-yellow))))
 `(orderless-match-face-3 ((t (:weight bold :underline ,plt-red))))
 ;; w3m
 `(w3m-anchor ((t (:inherit link))))
 `(w3m-image-anchor ((t (:foreground "#222" :background ,plt-blue
                         :box (:line-width 2 :color ,plt-blue :style released-button)))))
 `(w3m-image ((t (:inherit font-lock-string-face))))
 ;; mood-line
 (plattfot-theme--metadata 'mood-line-unimportant)
 (plattfot-theme--metadata 'mood-line-status-neutral)
 `(mood-line-modified ((t (:inherit 'font-lock-builtin-face))))
 `(mood-line-status-success ((t (:foreground ,plt-green))))
 `(mood-line-status-error ((t (:inherit compilation-error))))
 `(mood-line-status-warning ((t (:inherit compilation-warning))))
 `(mood-line-status-info ((t (:inherit compilation-info))))
 ;; marginalia
 `(marginalia-on ((t (:foreground ,plt-green :weight bold))))
 `(marginalia-off ((t (:foreground ,plt-red :weight bold))))
 ;; Nano modeline
 `(nano-modeline-active-status-** ((t (:inherit 'font-lock-builtin-face))))
 (plattfot-theme--metadata 'nano-modeline-active-status-RO)
 (plattfot-theme--metadata 'nano-modeline-active-status-RW)
 (plattfot-theme--metadata 'nano-modeline-active-primary)
 ;; Ansi-color (Comint mode)
 `(ansi-color-black ((t (:foreground "#4d4d4d"))))
 `(ansi-color-red ((t (:foreground ,plt-red))))
 `(ansi-color-green ((t (:foreground ,plt-green))))
 `(ansi-color-yellow ((t (:foreground ,plt-yellow))))
 `(ansi-color-blue ((t (:foreground ,plt-blue))))
 `(ansi-color-magenta ((t (:foreground "#a78edb"))))
 `(ansi-color-cyan ((t (:foreground "#43afce"))))
 `(ansi-color-white ((t (:foreground "#f3ebe2"))))
 )

(provide-theme 'plattfot)

;;; plattfot-theme.el  ends here
