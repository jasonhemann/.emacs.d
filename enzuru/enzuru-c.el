(defun my-c-mode-hook ()
  (setq c-default-style "bsd"
        c-basic-offset 4
        tab-width 8
        indent-tabs-mode t))
(add-hook 'c-mode-hook 'my-c-mode-hook)
