(savehist-mode 1)

(require 'uniquify)
(setq uniquify-buffer-name-style 'post-forward)

(require 'saveplace)
(setq-default save-place t)

(defun volatile-kill-buffer ()
   "Kill current buffer unconditionally."
   (interactive)
   (let ((buffer-modified-p nil))
     (kill-buffer (current-buffer))))

(setq switch-to-buffer-in-dedicated-window 'pop)
(setq kill-buffer-query-functions nil)
