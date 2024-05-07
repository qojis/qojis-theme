(require 'autothemer)

(defun qj:rgb->hex (r g b)
  (format "#%02X%02X%02X" r g b))

(autothemer-deftheme
 qojis-dark
 "A dark theme"

 ((((class color) (min-colors #xFFFFFF)))

  ;; Color Palette
  (qj:background        (qj:rgb->hex 28 29 31))
  (qj:background-light  (qj:rgb->hex 39 40 42))
  (qj:text        (qj:rgb->hex 180 182 188))
  (qj:text-weak   (qj:rgb->hex 112 114 121))

  (qj:grey-dk     (qj:rgb->hex 112 114 121))
  (qj:orange      (qj:rgb->hex 189 134 102))
  (qj:green       (qj:rgb->hex 106 156 106))
  (qj:green-lt    (qj:rgb->hex 111 166 129))
  (qj:blue        (qj:rgb->hex 99 155 238))
  (qj:blue-dk     (qj:rgb->hex 91 124 238))
  (qj:cyan        (qj:rgb->hex 105 181 205))
  (qj:purple      (qj:rgb->hex 181 117 175))
  (qj:purple-dk   (qj:rgb->hex 163 127 236))
  (qj:yellow      (qj:rgb->hex 165 162 93))
  (qj:yellow-dk   (qj:rgb->hex 131 128 47))
  (qj:red         (qj:rgb->hex 224 87 92))

  ;;(qj:mode-line            (qj:rgb->hex 86 42 108))
  ;;(qj:mode-line            (qj:rgb->hex 90 74 124))
  (qj:mode-line            (qj:rgb->hex 54 48 70))
  (qj:mode-line-inactive   (qj:rgb->hex 39 40 42))

  (qj:region               (qj:rgb->hex 39 57 116))
  )

 ;; Faces
 ((default                       (:foreground qj:text :background qj:background))
  (cursor                        (  :background qj:text))
  (region                        (:background qj:region))
  (error                         (:foreground qj:red :weight 'bold))
  (warning                       (:foreground qj:orange :weight 'bold))

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
  (link                          (:foreground qj:blue-dk :underline t))
  (link-visited                  (:foreground qj:purple-dk :underline t))

  (minibuffer-prompt             (:foreground qj:yellow))

  (mode-line                     (:foreground qj:text :background qj:mode-line :box (:line-width 4 :color qj:mode-line)))
  (mode-line-inactive            (:foreground qj:text-weak :background qj:mode-line-inactive :box (:line-width 4 :color qj:mode-line-inactive)))

  (org-date                      (:foreground qj:blue))
  (org-table                     (:foreground qj:orange))

  (outline-1                     (:foreground qj:purple :slant 'italic))
  (outline-2                     (:foreground qj:purple :slant 'italic))
  (outline-3                     (:foreground qj:purple :slant 'italic))
  (outline-4                     (:foreground qj:purple :slant 'italic))
  (outline-5                     (:foreground qj:purple :slant 'italic))
  (outline-6                     (:foreground qj:purple :slant 'italic))
  (outline-7                     (:foreground qj:purple :slant 'italic))
  (outline-8                     (:foreground qj:purple :slant 'italic))

  (isearch                       (:foreground "white" :background qj:green))
  (isearch-fail                  (:foreground "white" :background qj:red))
  (match                         (:foreground "white" :background qj:yellow-dk))

  (show-paren-match              (:weight 'bold))
  (show-paren-match-expression   (:weight 'bold))

  (window-divider                (:foreground qj:mode-line))
  (window-divider-first-pixel    (:foreground qj:mode-line))
  (window-divider-last-pixel     (:foreground qj:mode-line))
 ))

(provide-theme 'qojis-dark)
