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

;; gdb配置
(setq gdb-many-windows t)
(global-set-key [f7] 'gdb)
(global-set-key [C-f5] 'gud-run)
(global-set-key [S-f5] 'gud-cont)
(global-set-key [f5] 'compile)
(global-set-key [f8] 'gud-print)
(global-set-key [C-f8] 'gud-pstar)
(global-set-key [f9] 'gud-break)
(global-set-key [C-f9] 'gud-remove)
(global-set-key [f10] 'gud-next)
(global-set-key [C-f10] 'gud-until)
(global-set-key [S-f10] 'gud-jump)
(global-set-key [f11] 'gud-step)
(global-set-key [C-f11] 'gud-finish)
;; 语法检查
(add-hook 'c++-mode-hook 'flycheck-mode)
(add-hook 'c-mode-hook 'flycheck-mode)
