(setq inferior-lisp-program "/usr/local/sbcl")

(set-face-attribute 'default nil
                    :family "Terminus" :height 160 :weight 'normal)

(set-face-attribute 'variable-pitch nil
                    :family "Open Baskerville 0.0.75" :height 130 :weight 'normal)

(setq locate-make-command-line
      (lambda (ss) (list locate-command "/home/enzuru" "-name" ss)))

(setq multi-term-program "/usr/bin/fish")
(setq sr-terminal-program "/usr/bin/fish")
