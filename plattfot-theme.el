;;; plattfot-theme.el --- Plattfot theme  -*- lexical-binding: t; -*-
;; Copyright (C) 2021 Fredrik Salomonsson

;; Author: Fredrik Salomonsson <plattfot@posteo.ent>

;; This program is free software: you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.
;;
;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.
;;
;; You should have received a copy of the GNU General Public License
;; along with this program.  If not, see <https://www.gnu.org/licenses/>
;;; Commentary:

;; Simple theme for my needs.

;;; Code:
(deftheme plattfot
  "Color theme with the roots from sunburst-theme.

But have mutated to its own over the years. Trying to keep colors
to a minimum.")

(defgroup plattfot-theme nil
  "Group for the plattfot theme"
  :group 'faces)

(defcustom plt-select "#3387cc"
  "For faces that are of interest."
  :type 'string
  :group 'plattfot-theme)

(defcustom plt-info "#7ab92d"
  "For faces that represent higher value information.

Compared to the default faces."
  :type 'string
  :group 'plattfot-theme)

(defcustom plt-warning "#e9c062"
  "For faces that require the user's attention."
  :type 'string
  :group 'plattfot-theme)

(defcustom plt-highlight "#dd7b3b"
  "For faces that need to be highlighted."
  :type 'string
  :group 'plattfot-theme)

(defcustom plt-critical "#cc333b"
  "For faces that require the user's attention right away."
  :type 'string
  :group 'plattfot-theme)

(defcustom plt-shine "#ffffff"
  "For face that need subtle highlight."
  :type 'string
  :group 'plattfot-theme)

(defcustom plt-foreground "#dddddd"
  "Foreground face color"
  :type 'string
  :group 'plattfot-theme)

(defcustom plt-metadata "gray40"
  "For faces that are less important.
Will be faded into the background
E.g. comments, tags etc"
  :type 'string
  :group 'plattfot-theme)

(defcustom plt-fade "#222222"
  "Face color for faces that should be faded into the background.

E.g. mode line background and vertical bars."
  :type 'string
  :group 'plattfot-theme)

(defcustom plt-background "#111111"
  "Background face color"
  :type 'string
  :group 'plattfot-theme)

(defun plattfot-theme--metadata (face)
  "Fade the FACE into the background."
  `(,face ((t (:foreground ,plt-metadata :distant-foreground ,plt-foreground)))))

(defun plattfot-theme--shadow (face)
  "Fade the FACE into the background."
  `(,face ((t (:inherit shadow)))))

(custom-theme-set-faces
 'plattfot
 (if window-system `(default ((t (:background ,plt-background :foreground ,plt-foreground))))
   `(default ((t (:foreground ,plt-foreground)))))
 `(cursor ((t (:background ,plt-foreground))))
 `(vertical-border ((t (:background ,plt-background :foreground ,plt-fade))))
 `(fringe  ((t (:background ,plt-background))))
 `(error  ((t (:foreground ,plt-critical :weight bold))))
 `(link ((t (:foreground ,plt-select :underline t))))
 `(highlight ((t (:bold t :slant italic))))
 `(left-margin ((t (nil))))
 `(region ((t (:background ,plt-select))))

 (plattfot-theme--metadata  'escape-glyph)
 (plattfot-theme--metadata 'nobreak-hyphen)

 ;; Info
 (plattfot-theme--shadow 'Info-quoted)
 `(info-menu-star ((t (:foreground ,plt-warning))))
 `(link-visited ((t (:foreground ,plt-metadata :inherit link))))
 `(mode-line-inactive  ((t (:background ,plt-fade :foreground ,plt-metadata))))
 `(mode-line           ((t (:background ,plt-fade :foreground ,plt-select))))

 ;; show parens
 `(show-paren-match ((t (:foreground ,plt-shine :background ,plt-select))))
 `(show-paren-mismatch ((t (:foreground ,plt-shine :background ,plt-critical))))

 ;; eglot
 `(eglot-mode-line     ((t (:inherit mode-line-inactive))))

 ;; compilation
 `(compilation-mode-line-run ((t (:background ,plt-fade :foreground ,plt-select))))
 `(compilation-error ((t (:foreground ,plt-critical))))
 `(compilation-warning ((t (:foreground ,plt-warning))))
 `(compilation-info ((t (:foreground ,plt-info))))

 ;; mini buff
 `(minibuffer-prompt ((t (:foreground ,plt-foreground :bold t :background nil))))
 `(trailing-whitespace ((t (:background ,plt-critical))))

 ;; Org-mode list and other outline things
 `(outline-1 ((t (:foreground ,plt-foreground :weight extra-bold :height 1.16))))
 `(outline-2 ((t (:inherit outline-1))))
 `(outline-3 ((t (:inherit outline-1))))
 `(outline-4 ((t (:inherit outline-1))))
 `(outline-5 ((t (:inherit outline-1))))
 `(outline-6 ((t (:inherit outline-1))))
 `(outline-7 ((t (:inherit outline-1))))
 `(outline-8 ((t (:inherit outline-1))))
 `(org-ellipsis ((t (:foreground ,plt-warning))))
 (plattfot-theme--metadata 'org-tag)
 (plattfot-theme--metadata 'org-checkbox-statistics-todo)
 (plattfot-theme--metadata 'org-priority)
 (plattfot-theme--metadata 'org-special-keyword)
 (plattfot-theme--metadata 'org-date)
 (plattfot-theme--metadata 'org-agenda-done)
 (plattfot-theme--shadow 'org-table)

 ;; Org agenda
 `(org-agenda-date ((t (:foreground ,plt-foreground))))
 `(org-agenda-date-weekend ((t (:foreground ,plt-foreground))))
 `(org-warning ((t (:foreground ,plt-critical))))
 `(org-super-agenda-header ((t (:foreground ,plt-foreground :weight extra-bold))))
 `(org-agenda-structure ((t (:foreground ,plt-foreground :weight extra-bold))))

 `(org-scheduled-previously ((t (:inherit shadow :bold t))))
 `(org-scheduled-today ((t (:foreground ,plt-foreground :weight extra-bold))))
 (plattfot-theme--shadow 'org-scheduled)
 `(org-upcoming-deadline ((t (:foreground ,plt-highlight :weight extra-bold))))
 `(org-verbatim ((t (:inherit shadow :bold t))))
 `(org-todo ((t (:foreground ,plt-warning :bold t))))
 `(org-done ((t (:foreground ,plt-info :bold t))))
 `(org-code ((t (:foreground ,plt-info :bold t))))
 (plattfot-theme--shadow 'org-headline-done)
 `(org-document-title ((t (:inherit outline-1))))

 ;; Flymake
 `(flymake-warning ((t (:underline (:style wave :color ,plt-warning)))))
 `(flymake-note ((t (:underline (:style wave :color ,plt-info)))))
 `(flymake-error ((t (:underline (:style wave :color ,plt-critical)))))

 ;; Flyspell
 `(flyspell-duplicate ((t (:underline (:style wave :color ,plt-select)))))
 `(flyspell-incorrect ((t (:underline (:style wave :color ,plt-highlight)))))

 ;; Font lock
 (plattfot-theme--metadata 'font-lock-comment-face)
 (plattfot-theme--shadow 'font-lock-preprocessor-face)
 (plattfot-theme--shadow 'font-lock-reference-face)
 `(font-lock-builtin-face ((t (:foreground ,plt-warning))))
 `(font-lock-constant-face ((t (:inherit default))))
 `(font-lock-function-name-face ((t (:inherit default))))
 `(font-lock-keyword-face ((t (:foreground ,plt-highlight))))
 `(font-lock-string-face ((t (:foreground ,plt-info))))
 `(font-lock-type-face ((t (:inherit default))))
 `(font-lock-variable-name-face ((t (:inherit default))))
 `(font-lock-warning-face ((t (:bold t :foreground ,plt-critical))))

 ;; ERC
 `(erc-current-nick-face ((t (:inherit shadow))))
 `(erc-default-face ((t (:foreground ,plt-foreground))))
 `(erc-keyword-face ((t (:foreground ,plt-highlight))))
 `(erc-notice-face ((t (:foreground ,plt-metadata))))
 `(erc-timestamp-face ((t (:foreground ,plt-info))))
 `(erc-underline-face ((t (:foreground ,plt-warning))))

 ;; Message
 `(message-header-name ((t (:foreground ,plt-warning :weight bold))))
 `(message-header-other ((t (:foreground ,plt-foreground))))
 `(message-header-to ((t (:inherit message-header-other))))
 `(message-header-subject ((t (:foreground ,plt-shine))))
 `(message-header-cc ((t (:inherit message-header-other))))
 `(message-cited-text-1 ((t (:foreground "gray70"))))
 `(message-cited-text-2 ((t (:foreground "gray65"))))
 `(message-cited-text-3 ((t (:foreground "gray60"))))
 `(message-cited-text-4 ((t (:foreground "gray55"))))
 (plattfot-theme--metadata 'message-header-xheader)
 (plattfot-theme--metadata 'message-header-newsgroups)
 (plattfot-theme--metadata 'message-mml)
 (plattfot-theme--metadata 'message-separator)
 (plattfot-theme--metadata 'message-signature-separator)

 ;; Magit
 `(magit-branch-local ((t (:foreground ,plt-select))))
 `(magit-branch-remote ((t (:foreground ,plt-info))))
 `(magit-section-heading ((t (:foreground ,plt-warning :weight bold :extend t))))

 ;; Markdown
 `(markdown-language-keyword-face ((t (:inherit font-lock-keyword-face))))
 (plattfot-theme--metadata 'markdown-url-face)
 `(markdown-header-face ((t (:inherit outline-1))))
 `(markdown-header-face-1 ((t (:inherit markdown-header-face))))
 `(markdown-header-face-2 ((t (:inherit markdown-header-face))))
 `(markdown-header-face-3 ((t (:inherit markdown-header-face))))
 `(markdown-header-face-4 ((t (:inherit markdown-header-face))))
 `(markdown-header-face-5 ((t (:inherit markdown-header-face))))
 `(markdown-header-face-6 ((t (:inherit markdown-header-face))))

 ;; Company
 `(company-tooltip ((t (:inherit default :background ,plt-fade))))
 `(company-tooltip-selection ((t (:inherit default :background ,plt-select))))
 `(company-tooltip-common
   ((t (:inherit font-lock-constant-face :foreground ,plt-foreground :bold t :underline t))))
 (plattfot-theme--metadata  'company-tooltip-annotation)
 `(company-scrollbar-bg ((t (:background ,plt-fade))))
 `(company-scrollbar-fg ((t (:background ,plt-metadata))))
 `(company-preview  ((t (:inherit font-lock-comment-face :underline t ))))
 `(company-preview-common  ((t (:inherit font-lock-comment-face :underline t ))))
 `(company-template-field ((t (:inherit match))))
 `(company-preview-search ((t (:inherit 'company-tooltip-search))))

 ;; Tooltip
 `(tooltip ((t (:inherit variable-pitch :background ,plt-fade :foreground ,plt-metadata))))

 ;; Elfeed
 (plattfot-theme--metadata 'elfeed-search-feed-face)
 (plattfot-theme--metadata 'elfeed-search-date-face)
 `(elfeed-search-title-face ((t (:inherit shadow :weight bold))))
 `(elfeed-search-unread-title-face ((t (:foreground ,plt-shine :weight bold))))
 `(elfeed-search-tag-face ((t (:foreground ,plt-info))))

 ;; Ediff
 `(ediff-current-diff-A ((t (:background "gray20"))))
 `(ediff-current-diff-Ancestor ((t (:background "gray20"))))
 `(ediff-current-diff-B ((t (:background "gray20"))))
 `(ediff-current-diff-C ((t (:background "gray20"))))
 `(ediff-even-diff-A ((t (:background "gray11"))))
 `(ediff-even-diff-Ancestor ((t (:background "gray11"))))
 `(ediff-even-diff-B ((t (:background "gray11"))))
 `(ediff-even-diff-C ((t (:background "gray11"))))
 `(ediff-fine-diff-A ((t (:background ,plt-highlight))))
 `(ediff-fine-diff-Ancestor ((t (:background ,plt-highlight))))
 `(ediff-fine-diff-B ((t (:background ,plt-highlight))))
 `(ediff-fine-diff-C ((t (:background ,plt-highlight))))
 `(ediff-odd-diff-A ((t (:background "gray11"))))
 `(ediff-odd-diff-Ancestor ((t (:background "gray11"))))
 `(ediff-odd-diff-B ((t (:background "gray11"))))
 `(ediff-odd-diff-C ((t (:background "gray11"))))

 ;; Popup
 `(popup-menu-face ((t (:foreground ,plt-foreground :background ,plt-fade))))
 `(popup-menu-summary-face ((t (:foreground ,plt-foreground :background ,plt-fade))))
 `(popup-tip-face ((t (:foreground ,plt-foreground :background ,plt-fade))))
 `(popup-face ((t (:foreground ,plt-foreground :background ,plt-fade))))
 `(popup-isearch-match ((t (:foreground ,plt-select :background ,plt-fade))))
 `(popup-menu-selection-face ((t (:foreground ,plt-background :background ,plt-select :weight bold))))
 `(popup-menu-mouse-face ((t (:foreground ,plt-background :background ,plt-select))))
 (plattfot-theme--metadata 'fill-column-indicator)

 ;; Selectrum
 `(selectrum-current-candidate ((t (:inherit isearch))))

 ;; Vertico
 `(vertico-current ((t (:inherit isearch))))

 ;; Corfu
 `(corfu-current ((t (:inherit isearch))))

 ;; Orderless
 `(orderless-match-face-0 ((t (:weight bold :underline t))))
 `(orderless-match-face-1 ((t (:weight bold :underline ,plt-info))))
 `(orderless-match-face-2 ((t (:weight bold :underline ,plt-warning))))
 `(orderless-match-face-3 ((t (:weight bold :underline ,plt-critical))))

 ;; w3m
 `(w3m-anchor ((t (:inherit link))))
 `(w3m-image-anchor ((t (:foreground ,plt-fade :background ,plt-select
                         :box (:line-width 2 :color ,plt-select :style released-button)))))
 `(w3m-image ((t (:inherit font-lock-string-face))))

 ;; mood-line
 (plattfot-theme--metadata 'mood-line-unimportant)
 (plattfot-theme--metadata 'mood-line-status-neutral)
 `(mood-line-modified ((t (:inherit 'font-lock-builtin-face))))
 `(mood-line-status-success ((t (:foreground ,plt-info))))
 `(mood-line-status-error ((t (:inherit compilation-error))))
 `(mood-line-status-warning ((t (:inherit compilation-warning))))
 `(mood-line-status-info ((t (:inherit compilation-info))))

 ;; marginalia
 `(marginalia-on ((t (:foreground ,plt-info :weight bold))))
 `(marginalia-off ((t (:foreground ,plt-critical :weight bold))))

 ;; Nano modeline
 `(nano-modeline-active-status-** ((t (:foreground ,plt-highlight))))
 `(nano-modeline-active-status-RO ((t (:foreground ,plt-warning))))
 (plattfot-theme--metadata 'nano-modeline-active-status-RO)
 (plattfot-theme--metadata 'nano-modeline-active-primary)

 ;; Ansi-color (Comint mode)
 `(ansi-color-black ((t (:foreground ,plt-metadata))))
 `(ansi-color-red ((t (:foreground ,plt-critical))))
 `(ansi-color-green ((t (:foreground ,plt-info))))
 `(ansi-color-yellow ((t (:foreground ,plt-warning))))
 `(ansi-color-blue ((t (:foreground ,plt-select))))
 `(ansi-color-magenta ((t (:foreground "#a78edb"))))
 `(ansi-color-cyan ((t (:foreground "#43afce"))))
 `(ansi-color-white ((t (:foreground ,plt-foreground))))

 ;; Ledger
 `(ledger-font-posting-amount-face ((t (:foreground ,plt-info))))
 `(ledger-font-posting-date-face ((t (:foreground ,plt-foreground))))
 `(ledger-font-price-symbol-face ((t (:foreground ,plt-info))))
 `(ledger-font-payee-uncleared-face ((t (:foreground ,plt-warning))))

 ;; Isearch
 `(isearch ((t (:foreground ,plt-fade :background ,plt-select))))
 `(isearch-fail ((t (:background ,plt-critical))))
 `(lazy-highlight ((t (:background ,plt-metadata :foreground ,plt-foreground))))
 `(query-replace ((t (:inherit isearch))))
 )

(provide-theme 'plattfot)

;;; plattfot-theme.el ends here
