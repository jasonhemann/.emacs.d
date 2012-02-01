;;; pyimpsort-autoloads.el --- automatically extracted autoloads
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "pyimpsort" "pyimpsort.el" (0 0 0 0))
;;; Generated autoloads from pyimpsort.el

(autoload 'pyimpsort-region "pyimpsort" "\
Sort python imports from region BEGIN to END points.

\(fn BEGIN END)" t nil)

(autoload 'pyimpsort-buffer "pyimpsort" "\
Sort python imports from current buffer.

\(fn)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "pyimpsort" '("pyimpsort-")))

;;;***

;;;### (autoloads nil nil ("pyimpsort-pkg.el") (0 0 0 0))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; pyimpsort-autoloads.el ends here
