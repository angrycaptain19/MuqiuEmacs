(use-package web-mode
  :init
  (bind-key "\C-cv" 'browse-url-of-file))

(add-to-list 'auto-mode-alist '("\\.html?\\'" . web-mode))
(defun my-web-mode-hook ()
  "Hooks for Web mode."
  (setq web-mode-markup-indent-offset 2))
(setq web-mode-comment-style 2)

(add-hook 'web-mode-hook 'emmet-mode)

(use-package zencoding-mode)
(add-hook 'sgml-mode-hook 'zencoding-mode)

(add-to-list 'auto-mode-alist '("\\.js$" . js2-mode))  
(add-hook 'js2-mode-hook 'my-common-mode-auto-pair)
