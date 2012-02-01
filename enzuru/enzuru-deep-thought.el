(add-to-list 'custom-theme-load-path "~/.emacs.d/local/deep-thought-theme/")
(load-theme 'deep-thought t)

(sml/apply-theme 'respectful)

(set-mouse-color "white")

(if (eq 'global-hl-line-mode 1) (set-face-background 'linum "#000F14"))
(set-face-attribute 'fringe nil :background "#000F14" :foreground "#FFFFFF")

(set-face-foreground 'mode-line-inactive "#888888")
(set-face-background 'mode-line-inactive "#000F14")

(set-face-background 'mode-line "#113450")
(set-face-attribute 'vertical-border nil :foreground "#000F14")

(custom-theme-set-variables
 'deep-thought
 '(linum-format " %7d "))
