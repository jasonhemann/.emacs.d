;; wanderlust
(autoload 'wl "wl" "Wanderlust" t)
(autoload 'wl-other-frame "wl" "Wanderlust on new frame." t)
(autoload 'wl-draft "wl-draft" "Write draft with Wanderlust." t)

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
(setq wl-local-domain "enzu.ru")

(setq wl-default-folder "%inbox")
(setq wl-default-spec "%")
(setq wl-draft-folder "%[Gmail]/Drafts") ; Gmail IMAP
(setq wl-trash-folder "%[Gmail]/Trash")

(setq wl-folder-check-async t)

(setq wl-from "Ahmed Khanzada <me@enzu.ru>")

(setq elmo-imap4-use-modified-utf7 t)

(autoload 'wl-user-agent-compose "wl-draft" nil t)
(if (boundp 'mail-user-agent)
    (setq mail-user-agent 'wl-user-agent))
(if (fboundp 'define-mail-user-agent)
    (define-mail-user-agent
      'wl-user-agent
      'wl-user-agent-compose
      'wl-draft-send
      'wl-draft-kill
      'mail-send-hook))

;; ignore  all fields
(setq wl-message-ignored-field-list '("^.*:"))

;; ..but these five
(setq wl-message-visible-field-list
'("^To:"
  "^Cc:"
  "^From:"
  "^Subject:"
  "^Date:"))

(setq wl-summary-indent-length-limit nil)
(setq wl-summary-width nil)

;; -comp.os.plan9:enzuru@eternal-september.org:119
;; (setq wl-draft-folder "+drafts")

(setq wl-quicksearch-folder "%[Gmail]/All Mail")
