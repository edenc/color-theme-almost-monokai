;;; Almost Monokai: color-theme-almost-monokai.el
;;; A beautiful, fruity and calm emacs color theme.

;; Author: Prateek Saxena <prtksxna@gmail.com>
;; Author: Pratul Kalia   <pratul@pratul.in>
;;
;; Based on the Monokai TextMate theme
;; Author: Wimer Hazenberg <http://www.monokai.nl>

;; Depends: color-theme

;; This file is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation; either version 2, or (at your option)
;; any later version.

;; This file is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with GNU Emacs; see the file COPYING.  If not, write to
;; the Free Software Foundation, Inc., 51 Franklin Street, Fifth Floor,
;; Boston, MA 02110-1301, USA.

;; With slight adjustments for better org-mode compatibility

; Color theme support is required.
(require 'color-theme)

(defvar monokai-green-light "#A6E22E")
(defvar monokai-green       "#A6E32D")
(defvar monokai-yellow      "#FC951E")
(defvar monokai-blue        "#C48DFF")
(defvar monokai-magenta-dark "#A6204D")
(defvar monokai-magenta      "#FA2573")
(defvar monokai-cyan        "#67D9F0")
(defvar monokai-white-light "#F0F0F0")
(defvar monokai-white       "#F8F8F2")
(defvar monokai-black       "#101010")
(defvar monokai-beige-light "#49483E")
(defvar monokai-beige1      "#75715E")
(defvar monokai-beige       "#75715D")
(defvar monokai-dark-beige  "#272822")

(defvar monokai-background     monokai-dark-beige)
(defvar monokai-foreground     monokai-white)
(defvar monokai-cursor         monokai-white-light)
(defvar monokai-invisible      monokai-beige-light)
(defvar monokai-highlight-line "grey10")
(defvar monokai-selection      "grey5")
(defvar monokai-comment        monokai-beige1)
(defvar monokai-builtin        monokai-yellow)
(defvar monokai-string         "#E6DB74")
(defvar monokai-constant       "#AE81FF")
(defvar monokai-variable       monokai-magenta)
(defvar monokai-class          monokai-green-light)
(defvar monokai-keyword        monokai-cyan)
(defvar monokai-invalid-background        monokai-magenta)
(defvar monokai-invalid-foreground        "#F8F8F0")

(defvar monokai-me             monokai-green)
(defvar monokai-highlight      monokai-magenta)

(defvar erc-colors-list
  `(,monokai-yellow
    ,monokai-blue
    ,monokai-cyan
    "gold"
    "tomato"
    "orchid"
    "DodgerBlue1"
    "SpringGreen1"
    "chartreuse1"
    "firebrick1"))

; Code start.
(defun color-theme-almost-monokai ()
  (interactive)
  (color-theme-install
   `(color-theme-almost-monokai
     ((background-color . ,monokai-background)
      (foreground-color . ,monokai-foreground)
      (cursor-color . ,monokai-cursor))
     (default ((t (nil))))
     (mode-line
      ((t
        (:background ,monokai-background
         :foreground ,monokai-foreground
         :box (:line-width 1
               :style released-button)))))
     (mode-line-inactive
      ((t
        (:background ,monokai-invisible
         :foreground ,monokai-foreground
         :box (:line-width 1
               :style released-button)))))
     (outline-4 ((t (:foreground ,monokai-yellow))))
     (font-lock-comment-face ((t (:foreground ,monokai-comment))))
     (font-lock-string-face  ((t (:foreground ,monokai-string))))
     (font-lock-constant-face ((t (:foreground ,monokai-constant))))
     (font-lock-variable-name-face ((t (:foreground ,monokai-variable))))
     (font-lock-function-name-face ((t (:foreground ,monokai-class :bold t))))
     (font-lock-keyword-face ((t (:foreground ,monokai-keyword))))
     (cperl-nonoverridable-face ((t (:foreground ,monokai-constant))))
     (cperl-invalid ((t (:foreground ,monokai-invalid-foreground
                         :background ,monokai-invalid-background))))
     (cperl-array-face ((t (:foreground "#70A5FF"))))
     (cperl-hash-face ((t (:foreground ,monokai-yellow))))
     (font-lock-builtin-face ((t (:foreground ,monokai-constant))))
     (font-lock-type-face ((t (:foreground ,monokai-constant))))

     (erc-input-face ((t (:foreground "white"))))
     (erc-my-nick-face ((t (:foreground ,monokai-me))))
     (erc-timestamp-face ((t (:foreground ,monokai-green))))
     (erc-prompt-face ((t (:foreground ,monokai-beige))))
     (erc-direct-msg-face ((t (:foreground ,monokai-magenta))))
     (erc-current-nick-face ((t (:foreground ,monokai-green))))
     (erc-keyword-face ((t (:foreground ,monokai-magenta :bold t :background ,monokai-highlight-line))))

     (org-todo ((t (:foreground ,monokai-magenta))))
     (org-warning ((t (:foreground ,monokai-magenta))))
     (org-scheduled-today ((t (:foreground ,monokai-green))))
     (org-habit-ready-face ((t (:background ,monokai-green-light))))
     (org-habit-ready-future-face ((t (:background ,monokai-green))))
     (org-habit-overdue-face ((t (:background ,monokai-magenta))))
     (org-habit-overdue-future-face ((t (:background ,monokai-magenta-dark))))
     (org-habit-alert-face ((t (:background ,monokai-yellow))))
     (org-habit-alert-future-face ((t (:background ,monokai-yellow))))
     (org-habit-clear-future-face ((t (:background ,monokai-keyword))))
     (org-hide ((t (:foreground ,monokai-background))))
     (org-mode-line-clock-overrun ((t (:background ,monokai-magenta))))

     (gnus-group-news-1 ((t (:foreground ,monokai-yellow))))
     (gnus-group-news-2 ((t (:foreground ,monokai-yellow))))
     (gnus-group-news-3 ((t (:foreground ,monokai-green))))
     (gnus-group-news-4 ((t (:foreground ,monokai-magenta))))
     (gnus-group-news-5 ((t (:foreground ,monokai-cyan))))
     (gnus-group-news-6 ((t (:foreground ,monokai-blue))))
     (gnus-group-news-7 ((t (:foreground ,monokai-invisible))))
     (gnus-summary-low-read ((t (:foreground ,monokai-invisible))))

     (highlight-80+ ((t (:background "#D62E00"))))
     (hl-line ((t (:background ,monokai-highlight-line))))
     (region ((t (:background ,monokai-selection))))

     (ido-subdir ((t (:foreground ,monokai-magenta))))
     (ido-only-match ((t (:foreground ,monokai-green))))
     (ido-indicator ((t (:foreground ,monokai-yellow :background ,monokai-magenta-dark))))
     )
   )
)
(provide 'color-theme-almost-monokai)
                                        ;---------------
                                        ; Code end.
