(add-hook 'scala-mode-hook 'ensime-scala-mode-hook)

(defface enzuru-scala-font-lock:var-face
  '((t (:inherit font-lock-comment-face)))
  "Font Lock mode face used to highlight scala variable names."
  :group 'scala)
