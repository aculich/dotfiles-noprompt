;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Emacs lisp

;;;; Required packages

(package-require 'paredit)
(package-require 'rainbow-delimiters)

(require 'noprompt-paredit)

;;;; Hooks

(add-hook 'emacs-lisp-mode-hook 'paredit-mode)
(add-hook 'emacs-lisp-mode-hook 'rainbow-delimiters-mode)
(add-hook 'emacs-lisp-mode-hook 'eldoc-mode)
(add-hook 'emacs-lisp-mode-hook 'noprompt/define-paredit-keys)
(add-hook 'emacs-lisp-mode-hook
	  (lambda ()
	    (nlmap ",e" 'eval-defun)
	    (nlmap ",l" 'eval-buffer)))

(provide 'noprompt-elisp)