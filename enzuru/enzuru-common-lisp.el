;;(setq slime-contribs '(slime-fancy slime-asdf))
;;(slime-setup '(slime-company))
;;(require 'sly-autoloads)
;;(load (expand-file-name "~/quicklisp/slime-helper.el"))
(sly)

(add-hook 'lisp-mode-hook
          (lambda ()
            (local-set-key (kbd "C-x C-d") 'sly-describe-function)
            (local-set-key (kbd "C-x C-w") 'sly-edit-definition-other-window)
            (local-set-key (kbd "C-x c") 'sly-compile-and-load-file)))
