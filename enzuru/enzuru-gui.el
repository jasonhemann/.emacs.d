(fringe-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)

(if (eq system-type 'darwin)
    (load-library "enzuru-exotica"))
(if (eq system-type 'windows-nt)
    (load-library "enzuru-arjen-grey"))
(if (eq system-type 'berkeley-unix)
    (load-library "enzuru-deep-thought"))

(when (string= (system-name) "spirit")
  (load-library "enzuru-deep-thought"))
(when (string= (system-name) "solitude")
  (load-library "enzuru-tomorrow-blue"))
