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
(require 'less-css-mode)

(require 'go-mode)
(setq gofmt-command "/usr/local/bin/gofmt")
(add-hook 'before-save-hook #'gofmt-before-save)


(require 'yaml-mode)
(add-to-list 'auto-mode-alist '("\\.yaml$" . yaml-mode))
(add-to-list 'auto-mode-alist '("\\.yml$" . yaml-mode))

(column-number-mode t)

(provide 'modes)
