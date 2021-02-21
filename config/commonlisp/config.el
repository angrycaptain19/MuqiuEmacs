(setq inferior-lisp-program "/usr/bin/sbcl")
    (add-to-list 'load-path "/usr/")
    (use-package slime)
    (slime-setup)
(slime-setup '(slime-fancy))
(add-hook 'lisp-mode slime-mode)

(define-key slime-mode-map (kbd "\C-cl") 'slime-load-file)
(define-key slime-mode-map (kbd "\C-cc") 'slime-compile-file)
