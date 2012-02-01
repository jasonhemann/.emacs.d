(defun rename-compilation-buffer ()
  "Renames existing *compilation* buffer to something unique so
      that a new compilation job can be run."
  (interactive)
  (let ((cbuf (get-buffer "*compilation*"))
        (more-cbufs t)
        (n 1)
        (new-cbuf-name ""))
    (when cbuf
      (while more-cbufs
        (setq new-cbuf-name (format "*compilation%d*" n))
        (setq n (1+ n))
        (setq more-cbufs (get-buffer new-cbuf-name)))
      (with-current-buffer cbuf
        (rename-buffer new-cbuf-name)))))

(setq compilation-always-kill t)

(defun my-compilation-hook ()
  (when (not (get-buffer-window "*compilation*"))
    (save-selected-window
      (save-excursion
        (let* ((w (split-window-vertically))
               (h (window-height w)))
          (select-window w)
          (switch-to-buffer "*compilation*")
          (rename-buffer "")
          (shrink-window (- h compilation-window-height)))))))

(add-hook 'compilation-mode-hook 'my-compilation-hook)
