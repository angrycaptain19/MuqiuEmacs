(use-package jedi)
(use-package elpy)
(use-package iedit)
(elpy-enable)

(setq elpy-rpc-backend "jedi")
(define-key yas-minor-mode-map (kbd "C-c k") 'yas-expand)
(define-key global-map (kbd "C-c o") 'iedit-mode)

(add-to-list 'company-backends '(company-anaconda :with company-yasnippet))
(add-hook 'python-mode-hook 'anaconda-mode)

(when (require 'flycheck nil t)
  (setq elpy-modules(delq 'elpy-module-flymake elpy-modules))
  (add-hook 'elpy-mode-hook 'flycheck-mode))
