;; 代码补全
(use-package lsp-mode :commands lsp)
(use-package lsp-ui :commands lsp-ui-mode)
(use-package company-lsp :commands company-lsp)

(use-package ccls
  :hook ((c-mode c++-mode objc-mode cuda-mode) .
         (lambda () (require 'ccls) (lsp))))

;; 代码跳转
(add-hook 'c-mode-hook 'ggtags-mode)
(add-hook 'c++-mode-hook 'ggtags-mode)

(use-package gud)
;; gdb配置
(setq gdb-many-windows t)
(define-key gud-mode-map [f7] 'gdb)
(define-key gud-mode-map [C-f5] 'gud-run)
(define-key gud-mode-map [S-f5] 'gud-cont)
(define-key gud-mode-map [f5] 'compile)
(define-key gud-mode-map [f8] 'gud-print)
(define-key gud-mode-map [C-f8] 'gud-pstar)
(define-key gud-mode-map [f9] 'gud-break)
(define-key gud-mode-map [C-f9] 'gud-remove)
(define-key gud-mode-map [f10] 'gud-next)
(define-key gud-mode-map [C-f12] 'gud-until)
(define-key gud-mode-map [S-f12] 'gud-jump)
(define-key gud-mode-map [f11] 'gud-step)
(define-key gud-mode-map [C-f11] 'gud-finish)

;; 语法检查
(add-hook 'c++-mode-hook 'flycheck-mode)
(add-hook 'c-mode-hook 'flycheck-mode)
