;;; code:

(deftheme plattfot
  "Color theme with the roots from sunburst-theme.

But have mutated to its own over the years. Trying to keep colors
to a minimum.")

(defgroup plattfot-theme nil
  "Group for the plattfot theme"
  :group 'theme)

(defcustom plt-blue "#3387cc"
  "Main blue color of the plattfot theme."
  :type 'string
  :group 'plattfot-theme)

(defcustom plt-yellow "#e9c062"
  "Main yellow color of the plattfot theme."
  :type 'string
  :group 'plattfot-theme)

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
 `(link ((t (:foreground "#3387cc" :underline t))))
 ;; Info
 `(Info-quoted ((t (:foreground "dark gray"))))
 `(info-menu-star ((t (:foreground ,plt-yellow))))
 `(link-visited ((t (:foreground "violet" :inherit link))))
 `(mode-line-inactive  ((t (:background "#222" :foreground "#666"))))
 `(mode-line           ((t (:background "#222" :foreground ,plt-blue))))
 ;; avy
 `(avy-background-face
   ((t (:foreground "#666" :background "#111" :inverse-video nil))))
 `(avy-lead-face-0
   ((t (:foreground ,plt-blue :background "#111" :inverse-video nil :weight bold))))
 `(avy-lead-face-1
   ((t (:foreground "#cf6a4c" :background "#111" :inverse-video nil :weight bold))))
 `(avy-lead-face-2
   ((t (:foreground ,plt-yellow :background "#111" :inverse-video nil :weight bold))))
 `(avy-lead-face
   ((t (:foreground "#65b042" :background "#111" :inverse-video nil :weight bold))))

 ;; mini buff
 `(minibuffer-prompt ((t (:foreground ,plt-blue :bold t :background nil))))
 `(trailing-whitespace ((t (:background "#cc333b"))))

 ;; Org-mode list and other outline things
 `(outline-1 ((t (:foreground "dark gray" :bold t))))
 `(outline-2 ((t (:foreground "dark gray" :bold t))))
 `(outline-3 ((t (:foreground "dark gray" :bold t))))
 `(outline-4 ((t (:foreground "dark gray" :bold t))))
 `(outline-5 ((t (:foreground "dark gray" :bold t))))
 `(outline-6 ((t (:foreground "dark gray" :bold t))))
 `(outline-7 ((t (:foreground "dark gray" :bold t))))
 `(outline-8 ((t (:foreground "dark gray" :bold t))))

 `(org-tag ((t (:foreground "#666" ))))
 `(org-checkbox-statistics-todo ((t (:foreground "#666" ))))
 `(org-priority ((t (:foreground "#666" ))))
 `(org-special-keyword ((t (:foreground "#666" ))))
 `(org-date ((t (:foreground "#666" ))))

 ;; Org agenda
 `(org-agenda-date ((t (:foreground "#ddd"))))
 `(org-agenda-date-weekend ((t (:foreground "#ddd"))))
 `(org-warning ((t (:foreground "#cc333b"))))
 `(org-super-agenda-header ((t (:foreground ,plt-blue))))

 `(org-scheduled-previously ((t (:foreground "dark gray" :bold t))))
 `(org-scheduled-today ((t (:foreground "#ffffff"))))
 `(org-scheduled ((t (:foreground "dark gray"))))

 `(org-todo ((t (:foreground ,plt-blue :bold t))))
 `(org-done ((t (:foreground "#99cf50" :bold t))))
 `(buffers-tab ((t (:background "#111" :foreground "#ddd"))))
 `(font-lock-builtin-face ((t (:foreground "#dd7b3b"))))
 `(font-lock-comment-face ((t (:foreground "#666" ))))
 `(font-lock-constant-face ((t (:foreground "#99cf50"))))
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
 `(company-tooltip-annotation ((t (:foreground "#666"))))
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

 ;; Ediff
 `(ediff-current-diff-A ((t (:background "gray20"))))
 `(ediff-current-diff-Ancestor ((t (:background "gray20"))))
 `(ediff-current-diff-B ((t (:background "gray20"))))
 `(ediff-current-diff-C ((t (:background "gray20"))))
 `(ediff-even-diff-A ((t (:background "gray11"))))
 `(ediff-even-diff-Ancestor ((t (:background "gray11"))))
 `(ediff-even-diff-B ((t (:background "gray11"))))
 `(ediff-even-diff-C ((t (:background "gray11"))))
 `(ediff-fine-diff-A ((t (:background "#3d1452"))))
 `(ediff-fine-diff-Ancestor ((t (:background "#3d1452"))))
 `(ediff-fine-diff-B ((t (:background "#3d1452"))))
 `(ediff-fine-diff-C ((t (:background "#3d1452"))))
 `(ediff-odd-diff-A ((t (:background "gray11"))))
 `(ediff-odd-diff-Ancestor ((t (:background "gray11"))))
 `(ediff-odd-diff-B ((t (:background "gray11"))))
 `(ediff-odd-diff-C ((t (:background "gray11"))))
 )

(provide-theme 'plattfot)

;;; plattfot-theme.el  ends here
