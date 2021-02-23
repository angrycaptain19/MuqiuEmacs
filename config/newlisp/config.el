(use-package newlisp-mode)
(add-to-list 'auto-mode-alist '("\\.lsp$" . newlisp-mode))

(eval-after-load "speedbar" '(speedbar-add-supported-extension ".lsp"))
(define-key newlisp-mode-map [(control x) (control e)] 'newlisp-evaluate-prev-sexp)
(defun start-newlisp ()
  "Starts newlisp interpreter/or shows if already running.  Requires newlisp-mode to be loaded."
  (interactive)
  (newlisp-show-interpreter))
