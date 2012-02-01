(setq inferior-lisp-program "/usr/local/bin/sbcl")

(set-face-attribute 'default nil
                    :family "Terminus" :height 120 :weight 'normal)

(set-face-attribute 'variable-pitch nil
                    :family "Open Baskerville 0.0.75" :height 130 :weight 'normal)

(setq locate-make-command-line
      (lambda (ss) (list locate-command "/home/enzuru" "-name" ss)))

(setq racer-rust-src-path "~/.rustup/toolchains/stable-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/src/")

(setq multi-term-program "/usr/local/bin/fish")
(setq sr-terminal-program "/usr/local/bin/fish")
