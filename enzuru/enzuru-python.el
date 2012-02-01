(setq compilation-scroll-output t)

(add-hook 'python-mode-hook 'anaconda-mode)
(add-hook 'python-mode-hook 'anaconda-eldoc-mode)
;;(add-hook 'python-mode-hook (lambda () (setq compile-command (concat "python3 " (buffer-name)))))

(eval-after-load "company"
  '(add-to-list 'company-backends 'company-anaconda))

(setq python-shell-interpreter "/usr/local/bin/python3")

;;(add-hook 'python-mode-hook 'blacken-mode)
;;(elpy-enable)

(add-hook 'python-mode-hook
          (lambda ()
            (importmagic-mode)
            (local-set-key (kbd "C-x C-d") 'anaconda-mode-show-doc)
            (local-set-key (kbd "C-x C-w") 'anaconda-mode-find-definitions)
            (add-hook 'before-save-hook 'pyimport-remove-unused)
            (add-hook 'before-save-hook 'importmagic-fix-imports)
            (add-hook 'before-save-hook 'pyimpsort-buffer)
            (add-hook 'before-save-hook 'blacken-buffer)
            (set (make-local-variable 'compile-command)
                 (concat "python3 " (buffer-name)))))
