;; disable auto-save files (#foo#)
(setq auto-save-default nil)

;; disable backup files (foo~)
(setq backup-inhibited t)

;; disable auto-save-list/.saves
(setq auto-save-list-file-prefix nil)

;; disable bell
(setq visible-bell nil)

;; always open in the same window
(setq ns-pop-up-frames nil)

;; show extra whitespace
(setq show-trailing-whitespace t)

;; hide empty line fringe
(set-default 'indicate-empty-lines nil)

(provide 'global)
