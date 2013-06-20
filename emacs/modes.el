(setq auto-mode-alist (cons '("\\.lua$" . lua-mode) auto-mode-alist))
(autoload 'lua-mode "lua-mode" "Lua editing mode." t)
(add-hook 'lua-mode-hook 'turn-on-font-lock)
(add-hook 'lua-mode-hook 'hs-minor-mode)

(require 'git)
(require 'git-blame)
(require 'php-mode)
(require 'wide-column)

(setq auto-mode-alist (cons '("\\.h$" . c++-mode) auto-mode-alist))
(require 'protobuf-mode)
(require 'thrift-mode)

(column-number-mode t)

(provide 'modes)
