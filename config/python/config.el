(require 'jedi)
(require 'elpy)
(require 'iedit)
(elpy-enable)

(setq elpy-rpc-backend "jedi")
(define-key yas-minor-mode-map (kbd "C-c k") 'yas-expand)
(define-key global-map (kbd "C-c o") 'iedit-mode)

(add-to-list 'company-backends '(company-anaconda :with company-yasnippet))
(global-set-key (kbd "<C-tab>") 'company-complete)
(define-key company-active-map (kbd "C-n") 'company-select-next)
(define-key company-active-map (kbd "C-p") 'company-select-previous)
(add-hook 'python-mode-hook 'anaconda-mode)

(when (require 'flycheck nil t)
  (setq elpy-modules(delq 'elpy-module-flymake elpy-modules))
  (add-hook 'elpy-mode-hook 'flycheck-mode))