;; buffer menu
(global-set-key (kbd "C-x C-b") 'buffer-menu)

;; font size
(global-set-key (kbd "C-+") 'text-scale-adjust)
(global-set-key (kbd "C--") 'text-scale-adjust)
(global-set-key (kbd "C-0") 'text-scale-adjust)
(global-set-key (kbd "C-=") 'text-scale-adjust)

;; compile
(global-set-key "\C-c\C-c" 'compile) ; formerly undef (text-mode)

;; mac
(setq mac-command-modifier 'meta)
(setq mac-option-modifier 'none)

(provide 'bindings)
