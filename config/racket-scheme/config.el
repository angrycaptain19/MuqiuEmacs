(use-package racket-mode)
(setq racket-racket-program "racket")
(setq racket-raco-program "raco")
(add-hook 'racket-mode-hook
          (lambda ()
            (define-key racket-mode-map (kbd "\C-cj") 'racket-run)))
(setq tab-always-indent 'complete) ;; 使用tab自己主动补全
