;; company
(global-company-mode t)
(setq company-idle-delay 0)
(setq company-show-numbers t)
(setq company-minimum-prefix-length 1)
(global-set-key (kbd "<C-tab>") 'company-complete)
(define-key company-active-map (kbd "C-n") 'company-select-next)
(define-key company-active-map (kbd "C-p") 'company-select-previous)

