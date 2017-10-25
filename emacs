(setq org-todo-keywords
  '((sequence "TODO" "IN-PROGRESS" "WAITING" "DONE")))
(global-set-key "\C-cl" 'org-store-link)
(global-set-key "\C-cc" 'org-capture)
(global-set-key "\C-ca" 'org-agenda)
(global-set-key "\C-cb" 'org-iswitchb)
(setq org-startup-indented t)
;;(setq org-hide-leading-stars t)
;;(setq org-odd-level-only nil) 
;;(setq org-insert-heading-respect-content nil)
;;(setq org-M-RET-may-split-line '((item) (default . t)))
;;(setq org-special-ctrl-a/e t)
;;(setq org-return-follows-link nil)
;;(setq org-use-speed-commands t)
;;(setq org-startup-align-all-tables nil)
;;(setq org-log-into-drawer nil)
;;(setq org-tags-column 1)
;;(setq org-ellipsis " \u25bc" )
;;(setq org-speed-commands-user nil)
;;(setq org-blank-before-new-entry '((heading . nil) (plain-list-item . nil)))
;;(setq org-completion-use-ido t)
;;(setq org-indent-mode t)
;;(setq org-startup-truncated nil)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(org-agenda-files (quote ("~/test.org")))
 '(org-default-notes-file "~/.notes.org"))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
