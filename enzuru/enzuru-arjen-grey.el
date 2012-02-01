(sml/apply-theme 'respectful)

(add-to-list 'custom-theme-load-path "~/.emacs.d/local/arjen-grey-theme/")
(load-theme 'arjen-grey t)
(set-face-background 'linum "#2A2F38")
(set-face-foreground 'linum "#63747c")
(set-face-background 'hl-line "#000000")
(set-face-background 'mode-line-inactive "#2A2F38")

(custom-theme-set-variables
 'arjen-grey
 '(main-line-color1 "#191919")
 '(main-line-color2 "#111111")
 '(fringe-mode 6 nil (fringe))
 '(linum-format " %7d ")
 '(linum ((t (:inherit (shadow default) :foreground "#63747c" :background: "#2A2F38"))))
 '(hl-line ((t (:inherit highlight :background "#4B0082"))))
 '(font-lock-linum ((t (:foreground "#63747c" ))))
 )
