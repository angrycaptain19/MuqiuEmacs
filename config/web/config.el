;; web-mode
(add-to-list 'auto-mode-alist '("\\.jsx$" "\\.html$" . 'web-mode))
(add-hook 'web-mode-hook 'emmet-mode)
