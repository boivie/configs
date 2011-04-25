(custom-set-variables
  '(py-pychecker-command "~/bin/pychecker.sh")
  '(py-pychecker-command-args (quote ("")))
  '(python-check-command "~/bin/pychecker.sh"))

(add-hook 'find-file-hook 'flymake-find-file-hook)
(when (load "flymake" t)
  (defun flymake-pyflakes-init ()
    (let* ((temp-file (flymake-init-create-temp-buffer-copy
               'flymake-create-temp-inplace))
       (local-file (file-relative-name
            temp-file
            (file-name-directory buffer-file-name))))
      (list "~/bin/pychecker.sh"  (list local-file))))
   (add-to-list 'flymake-allowed-file-name-masks
             '("\\.py\\'" flymake-pyflakes-init)))
(load-library "flymake-cursor")
(global-set-key [f10] 'flymake-goto-prev-error)
(global-set-key [f11] 'flymake-goto-next-error)

;; Disable flymake's popup (may make emacs hang on Mac OS X)
;; http://koansys.com/tech/emacs-hangs-on-flymake-under-os-x
(setq flymake-gui-warnings-enabled nil)

(provide 'pycheck)
