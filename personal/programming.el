(defun disable-smartparens-strict-mode ()
  (smartparens-strict-mode -1))

(add-hook 'prelude-lisp-coding-hook 'disable-smartparens-strict-mode 'APPEND)

(add-hook 'prelude-interactive-lisp-coding-hook
          'disable-smartparens-strict-mode 'APPEND)

(prelude-require-package 'yasnippet)
(setq yas-snippet-dirs '("~/.emacs.d/personal/snippets"))
(yas-global-mode 1)

(global-subword-mode 1)
(global-set-key [f9] 'magit-status)

(eval-after-load 'flycheck
  '(setq flycheck-checkers (delq 'emacs-lisp-checkdoc flycheck-checkers)))
