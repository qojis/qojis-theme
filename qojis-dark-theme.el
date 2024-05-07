(require 'autothemer)

(defun qj:rgb->hex (r g b)
  (format "#%02X%02X%02X" r g b))

(autothemer-deftheme
 qojis-dark
 "A dark theme based on colors from Nord theme and from IntelliJ's Darcula theme."

 ((((class color) (min-colors #xFFFFFF)))

  ;; Color Palette
  (qj:background        (qj:rgb->hex 28 29 31))
  (qj:background-light  (qj:rgb->hex 39 40 42))
  (qj:text              (qj:rgb->hex 180 182 188))
  (qj:text-weak         (qj:rgb->hex 112 114 121))

  (qj:grey-dk           (qj:rgb->hex 112 114 121))
  (qj:orange            (qj:rgb->hex 189 134 102))
  (qj:green             (qj:rgb->hex 106 156 106))
  (qj:green-lt          (qj:rgb->hex 111 166 129))
  (qj:blue              (qj:rgb->hex 99 155 238))
  (qj:blue-dk           (qj:rgb->hex 91 124 238))
  (qj:cyan              (qj:rgb->hex 105 181 205))
  (qj:purple            (qj:rgb->hex 181 117 175))
  (qj:purple-dk         (qj:rgb->hex 163 127 236))
  (qj:yellow            (qj:rgb->hex 189 160 86))
  (qj:yellow-dk         (qj:rgb->hex 168 165 94))
  (qj:red               (qj:rgb->hex 224 87 92))

  ;;(qj:mode-line            (qj:rgb->hex 86 42 108))
  ;;(qj:mode-line            (qj:rgb->hex 90 74 124))
  (qj:mode-line            (qj:rgb->hex 54 48 70))
  (qj:mode-line-inactive   (qj:rgb->hex 39 40 42))
  (qj:region               (qj:rgb->hex 39 57 116))

  ;; colors from the nord theme https://www.nordtheme.com
  (qj:nord-polar0 "#2e3440")
  (qj:nord-polar1 "#3b4252")
  (qj:nord-polar2 "#434c5e")
  (qj:nord-polar3 "#4c566a")

  (qj:nord-snow0 "#d8dee9")
  (qj:nord-snow1 "#e5e9f0")
  (qj:nord-snow2 "#eceff4")

  (qj:nord-frost0 "#8fbcbb")
  (qj:nord-frost1 "#88c0d0")
  (qj:nord-frost2 "#81a1c1")
  (qj:nord-frost3 "#5e81ac")

  (qj:nord-red    "#bf616a")
  (qj:nord-orange "#d08770")
  (qj:nord-yellow "#ebcb8b")
  (qj:nord-green  "#a3be8c")
  (qj:nord-purple "#b48ead")
  )

 ;; Faces
 ((default                       (:foreground qj:text :background qj:background))
  (cursor                        (  :background qj:nord-snow0))
  (region                        (:background qj:region))
  (error                         (:foreground qj:red :weight 'bold))
  (warning                       (:foreground qj:orange :weight 'bold))
  (highlight                     (:background qj:nord-polar0 :foreground qj:nord-snow0))
  (lazy-highlight                (:background qj:yellow-dk :forefround qj:nord-snow0))

  (fringe                        (:background qj:background-light))
  (line-number                   (:background qj:background-light))
  (minibuffer-prompt             (:foreground qj:nord-snow0 :weight 'bold))
  
  (window-divider                (:foreground qj:mode-line))
  (window-divider-first-pixel    (:foreground qj:mode-line))
  (window-divider-last-pixel     (:foreground qj:mode-line))

  (link                          (:foreground qj:blue-dk :underline t))
  (link-visited                  (:foreground qj:purple-dk :underline t))

  (font-lock-comment-face        (:foreground qj:text-weak))
  (font-lock-keyword-face        (:foreground qj:orange))
  (font-lock-type-face           (:foreground qj:yellow))
  (font-lock-builtin-face        (:foreground qj:cyan))
  (font-lock-constant-face       (:foreground qj:purple))
  (font-lock-string-face         (:foreground qj:green))
  (font-lock-number-face         (:foreground qj:cyan))
  (font-lock-preprocessor-face   (:foreground qj:yellow-dk))
  (font-lock-function-name-face  (:foreground qj:blue))
  (font-lock-variable-name-face  (:foreground qj:green-lt))

  (mode-line                     (:foreground qj:text :background qj:mode-line :box (:line-width 4 :color qj:mode-line)))
  (mode-line-inactive            (:foreground qj:text-weak :background qj:mode-line-inactive :box (:line-width 4 :color qj:mode-line-inactive)))

  (org-date                      (:foreground qj:blue))
  (org-table                     (:foreground qj:orange))

  ;;(outline-1                     (:inherit 'variable-pitch :foreground qj:nord-frost0 :weight 'bold))
  (outline-1                     (:foreground qj:nord-frost0 :weight 'bold))
  (outline-2                     (:foreground qj:nord-frost0 :weight 'bold :slant 'italic))
  (outline-3                     (:foreground qj:nord-frost0 :slant 'italic))
  (outline-4                     (:foreground qj:nord-frost1 :slant 'italic))
  (outline-5                     (:foreground qj:nord-frost2 :slant 'italic))
  (outline-6                     (:foreground qj:nord-frost3 :slant 'italic))
  (outline-7                     (:foreground qj:nord-frost3))
  (outline-8                     (:foreground qj:nord-polar3))

  (isearch                       (:foreground "white" :background qj:green))
  (isearch-fail                  (:foreground "white" :background qj:red))
  (match                         (:foreground "white" :background qj:yellow))

  (show-paren-match              (:weight 'bold))
  (show-paren-match-expression   (:weight 'bold))

  (info-menu-star                (:foreground qj:nord-red))

  (dired-mark                    (:foreground qj:nord-purple :weight 'bold))
  (dired-marked                  (:foreground qj:nord-yellow :weight 'bold))

  (ansi-color-black              (:background qj:background :foreground qj:background))
  (ansi-color-blue               (:background qj:nord-frost3 :foreground qj:nord-frost3))
  (ansi-color-cyan               (:background qj:cyan :foreground qj:cyan))
  (ansi-color-green              (:background qj:green :foreground qj:green))
  (ansi-color-yellow             (:background qj:yellow :foreground qj:yellow))
  (ansi-color-red                (:background qj:nord-red :foreground qj:nord-red))
  (ansi-color-magenta            (:background qj:purple :foreground qj:purple))
  (ansi-color-white              (:background qj:nord-snow1 :foreground qj:nord-snow1))

  (ansi-color-bright-black       (:background qj:nord-polar0 :foreground qj:nord-polar0))
  (ansi-color-bright-blue        (:background qj:blue :foreground qj:blue))
  (ansi-color-bright-cyan        (:background qj:nord-frost1 :foreground qj:nord-frost1))
  (ansi-color-bright-green       (:background qj:nord-green :foreground qj:nord-green))
  (ansi-color-bright-yellow      (:background qj:nord-yellow :foreground qj:nord-yellow))
  (ansi-color-bright-red         (:background qj:red :foreground qj:red))
  (ansi-color-bright-magenta     (:background qj:nord-purple :foreground qj:nord-purple))
  (ansi-color-bright-white       (:background qj:nord-snow2 :foreground qj:nord-snow2))
  )
 )

(provide-theme 'qojis-dark)
