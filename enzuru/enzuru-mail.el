;; Autoloading
(autoload 'wl "wl" "Wanderlust" t)
(autoload 'wl-other-frame "wl" "Wanderlust on new frame." t)
(autoload 'wl-draft "wl-draft" "Write draft with Wanderlust." t)
(autoload 'wl-draft-send-with-imput-async "im-wl")
(autoload 'wl-user-agent-compose "wl-draft" nil t)

;; IMAP
(setq elmo-imap4-default-server "imap.gmail.com")
(setq elmo-imap4-default-user "me@enzu.ru")
(setq elmo-imap4-default-authenticate-type 'clear)
(setq elmo-imap4-default-port '993)
(setq elmo-imap4-default-stream-type 'ssl)
(setq elmo-imap4-use-modified-utf7 t)

;; SMTP
(setq wl-smtp-connection-type 'starttls)
(setq wl-smtp-posting-port 587)
(setq wl-smtp-authenticate-type "plain")
(setq wl-smtp-posting-user "me@enzu.ru")
(setq wl-smtp-posting-server "smtp.gmail.com")

;; Folders
(setq wl-default-spec "%")
(setq wl-default-folder "%inbox")
(setq wl-draft-folder "%[Gmail]/Drafts") ; Gmail IMAP
(setq wl-trash-folder "%[Gmail]/Trash")

;; Asynchronous
(setq wl-draft-send-function 'wl-draft-send-with-imput-async)
(setq wl-folder-check-async t)

;; Quicksearch
(setq wl-quicksearch-folder "%[Gmail]/All Mail")

;; Summary
(setq wl-summary-indent-length-limit nil)
(setq wl-summary-width nil)

;; Details
(setq wl-local-domain "enzu.ru")
(setq wl-from "Ahmed Khanzada <me@enzu.ru>")

;; User agent
(if (boundp 'mail-user-agent)
    (setq mail-user-agent 'wl-user-agent))
(if (fboundp 'define-mail-user-agent)
    (define-mail-user-agent
      'wl-user-agent
      'wl-user-agent-compose
      'wl-draft-send
      'wl-draft-kill
      'mail-send-hook))

;; Ignore  all fields...
(setq wl-message-ignored-field-list '("^.*:"))

;; ...except these
(setq wl-message-visible-field-list
'("^To:"
  "^Cc:"
  "^From:"
  "^Subject:"
  "^Date:"))

;; -comp.os.plan9:enzuru@eternal-september.org:119
;; (setq wl-draft-folder "+drafts")
