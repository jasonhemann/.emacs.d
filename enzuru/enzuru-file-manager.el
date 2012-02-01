(add-to-list 'load-path "~/.emacs.d/local/sunrise-commander")

(require 'sunrise-commander)
(require 'sunrise-x-modeline)
(require 'sunrise-x-tree)

(add-to-list 'auto-mode-alist '("\\.srvm\\'" . sr-virtual-mode))
