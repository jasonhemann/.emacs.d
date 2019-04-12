(ivy-mode)
(counsel-mode)

(setq ivy-display-style 'fancy)
(setq ivy-use-virtual-buffers t)
(setq enable-recursive-minibuffers t)
(setq ivy-wrap t)
(setq magit-completing-read-function 'ivy-completing-read)
(setq projectile-completion-system 'ivy)

(add-hook 'after-init-hook 'global-company-mode)
(setq company-idle-delay 0)

(require 'color)

(defun ivy-with-thing-at-point (cmd)
  (let ((ivy-initial-inputs-alist
         (list
          (cons cmd (thing-at-point 'symbol)))))
    (funcall cmd)))

;; Example 1
(defun counsel-ag-thing-at-point ()
  (interactive)
  (ivy-with-thing-at-point 'counsel-ag))

;; Example 2
(defun swiper-thing-at-point ()
  (interactive)
  (ivy-with-thing-at-point 'swiper))
