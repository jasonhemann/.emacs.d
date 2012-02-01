(load-library "enzuru-enthusiast")

(load-library "enzuru-dash")

;;(exec-path-from-shell-initialize)

;;(setenv "PATH" (concat (getenv "PATH") ":/usr/local/bin"))

(setq locate-command "mdfind")

(setq locate-make-command-line
      (lambda (ss) (list locate-command "-name" ss)))

(set-face-attribute 'default nil
                    :family "Menlo" :height 120 :weight 'normal)

(set-face-attribute 'variable-pitch nil
                    :family "Bookerly" :height 135 :weight 'normal)

;;(autoload 'dash-at-point "dash-at-point"
;;  "Search the word at point with Dash." t nil)

;;(load-library "enzuru-vagrant")

(setq racer-rust-src-path "~/.rustup/toolchains/stable-x86_64-apple-darwin/lib/rustlib/src/rust/src/")

(setenv "PATH" (concat (getenv "PATH") ":/usr/local/bin"))

(nyan-mode)
(setq nyan-bar-length 5)
