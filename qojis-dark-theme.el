(require 'autothemer)

(defun qj:rgb->hex (r g b)
  (format "#%02X%02X%02X" r g b))

(defun qj:hex->rgb (hex)
  (list (string-to-number (substring hex 1 3) 16)
        (string-to-number (substring hex 3 5) 16)
        (string-to-number (substring hex 5 7) 16)))
  
(autothemer-deftheme
 qojis-dark
 "A dark theme based on colors from Nord theme and from IntelliJ's Darcula theme."

 ((((class color) (min-colors #xFFFFFF)))

  ;; Color Palette
  (qj:background           "#1c1d1f") ;; (qj:rgb->hex 28 29 31))
  (qj:background-light     "#27282a") ;; (qj:rgb->hex 39 40 42))
  (qj:text                 "#b4b6bc") ;; (qj:rgb->hex 180 182 188))
  (qj:text-weak            "#707279") ;; (qj:rgb->hex 112 114 121))

  (qj:grey-dk              "#707279") ;; (qj:rgb->hex 112 114 121))
  (qj:orange               "#bd8666") ;; (qj:rgb->hex 189 134 102))
  (qj:green                "#6a9c6a") ;; (qj:rgb->hex 106 156 106))
  (qj:green-lt             "#6fa681") ;; (qj:rgb->hex 111 166 129))
  (qj:blue                 "#639bee") ;; (qj:rgb->hex 99 155 238))
  (qj:blue-dk              "#5b7cee") ;; (qj:rgb->hex 91 124 238))
  (qj:cyan                 "#69b5cd") ;; (qj:rgb->hex 105 181 205))
  (qj:purple               "#b575af") ;; (qj:rgb->hex 181 117 175))
  (qj:purple-dk            "#a37fec") ;; (qj:rgb->hex 163 127 236))
  (qj:yellow               "#bda056") ;; (qj:rgb->hex 189 160 86))
  (qj:yellow-dk            "#a8a55e") ;; (qj:rgb->hex 168 165 94))
  (qj:red                  "#e0575c") ;; (qj:rgb->hex 224 87 92))

  ;;(qj:mode-line          "#562a6c") ;; (qj:rgb->hex 86 42 108))
  ;;(qj:mode-line          "#5a4a7c") ;; (qj:rgb->hex 90 74 124))
  (qj:mode-line            "#363046") ;; (qj:rgb->hex 54 48 70))
  (qj:mode-line-inactive   "#27282a") ;; (qj:rgb->hex 39 40 42))
  (qj:region               "#273974") ;; (qj:rgb->hex 39 57 116))

  ;; colors from the nord theme https://www.nordtheme.com
  (qj:nord-polar0          "#2e3440") ;; (qj:rgb->hex 46 52 64)
  (qj:nord-polar1          "#3b4252") ;; (qj:rgb->hex 59 66 82)
  (qj:nord-polar2          "#434c5e") ;; (qj:rgb->hex 67 76 94)
  (qj:nord-polar3          "#4c566a") ;; (qj:rgb->hex 76 86 106)

  (qj:nord-snow0           "#d8dee9") ;; (qj:rgb->hex 216 222 233)
  (qj:nord-snow1           "#e5e9f0") ;; (qj:rgb->hex 229 233 240)
  (qj:nord-snow2           "#eceff4") ;; (qj:rgb->hex 236 239 244)
   
  (qj:nord-frost0          "#8fbcbb") ;; (qj:rgb->hex 143 188 187)
  (qj:nord-frost1          "#88c0d0") ;; (qj:rgb->hex 136 192 208)
  (qj:nord-frost2          "#81a1c1") ;; (qj:rgb->hex 129 161 193)
  (qj:nord-frost3          "#5e81ac") ;; (qj:rgb->hex 94 129 172)

  (qj:nord-red             "#bf616a") ;; (qj:rgb->hex 191 97 106)
  (qj:nord-orange          "#d08770") ;; (qj:rgb->hex 208 135 112)
  (qj:nord-yellow          "#ebcb8b") ;; (qj:rgb->hex 235 203 139)
  (qj:nord-green           "#a3be8c") ;; (qj:rgb->hex 163 190 140)
  (qj:nord-purple          "#b48ead") ;; (qj:rgb->hex 180 142 173)

  (qj:background-red-dk    "#5f3a3f")
  (qj:background-red       "#7f3a3f")
  (qj:background-red-lt    "#ba636a")
  (qj:background-green-dk  "#233a18")
  (qj:background-green     "#374f2f")
  (qj:background-green-lt  "#5a7f4f")
  )

 ;; Faces
 ((default                       (:foreground qj:text :background qj:background))
  (cursor                        (  :background qj:nord-snow0))
  (region                        (:background qj:region))
  (error                         (:foreground qj:red :weight 'bold))
  (warning                       (:foreground qj:orange :weight 'bold))
  (highlight                     (:background qj:nord-polar0 :foreground qj:nord-snow0))
  (lazy-highlight                (:background qj:yellow-dk :foreground qj:nord-snow0))
  (shadow                        (:foreground qj:text-weak))

  (fringe                        (:background qj:background-light))
  (line-number                   (:background qj:background-light))
  (minibuffer-prompt             (:foreground qj:nord-snow0 :weight 'bold))
  
  (window-divider                (:foreground qj:mode-line))
  (window-divider-first-pixel    (:foreground qj:mode-line))
  (window-divider-last-pixel     (:foreground qj:mode-line))

  (link                          (:foreground qj:blue-dk :underline t))
  (link-visited                  (:foreground qj:purple-dk :underline t))

  (ediff-current-diff-A          (:background qj:background-red-dk))
  (ediff-current-diff-B          (:background qj:background-green-dk))
  (ediff-fine-diff-A             (:background qj:background-red))
  (ediff-fine-diff-B             (:background qj:background-green))

  (eshell-prompt                 (:foreground qj:nord-orange))
  (eshell-ls-directory           (:foreground qj:nord-frost3))
  (eshell-ls-executable          (:foreground qj:nord-red))
  (eshell-ls-symlink             (:foreground qj:nord-frost0))
  
  (font-lock-comment-face        (:foreground qj:text-weak))
  (font-lock-keyword-face        (:foreground qj:nord-purple))
  (font-lock-type-face           (:foreground qj:nord-frost3))
  (font-lock-builtin-face        (:foreground qj:nord-purple))
  (font-lock-constant-face       (:foreground qj:nord-frost2))
  (font-lock-string-face         (:foreground qj:nord-green))
  (font-lock-number-face         (:foreground qj:nord-purple))
  (font-lock-preprocessor-face   (:foreground qj:nord-orange))
  (font-lock-function-name-face  (:foreground qj:nord-frost1))
  (font-lock-variable-name-face  (:foreground qj:nord-frost1))

  (mode-line                     (:foreground qj:text :background qj:mode-line :box (:line-width 4 :color qj:mode-line)))
  (mode-line-inactive            (:foreground qj:text-weak :background qj:mode-line-inactive :box (:line-width 4 :color qj:mode-line-inactive)))

  (org-headline-done             (:foreground qj:text-weak))
  (org-date                      (:foreground qj:blue))
  (org-table                     (:foreground qj:orange))

  ;;(outline-1                     (:inherit 'variable-pitch :foreground qj:nord-frost0 :weight 'bold))
  (outline-1                     (:foreground qj:nord-frost0 :weight 'bold))
  (outline-2                     (:foreground qj:nord-frost0 :slant 'italic))
  (outline-3                     (:foreground qj:nord-frost1 :slant 'italic))
  (outline-4                     (:foreground qj:nord-frost2 :slant 'italic))
  (outline-5                     (:foreground qj:nord-frost3 :slant 'italic))
  (outline-6                     (:foreground qj:nord-polar3 :slant 'italic))
  (outline-7                     (:foreground qj:nord-polar3))
  (outline-8                     (:foreground qj:nord-polar3))

  (isearch                       (:foreground "white" :background qj:green))
  (isearch-fail                  (:foreground "white" :background qj:red))
  (match                         (:foreground "white" :background qj:yellow))

  (show-paren-match              (:weight 'bold))
  (show-paren-match-expression   (:weight 'bold))

  (info-menu-star                (:foreground qj:nord-red))

  (dired-header                  (:foreground qj:nord-frost0 :weight 'bold))
  (dired-directory               (:foreground qj:nord-frost3 :weight 'bold))
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
