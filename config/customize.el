;; window-numbering
(window-numbering-mode t)

;; highlight-parentheses
(require 'highlight-parentheses)
(define-globalized-minor-mode global-highlight-parentheses-mode
  highlight-parentheses-mode
  (lambda ()
    (highlight-parentheses-mode t)))
(global-highlight-parentheses-mode t)

;; highlight-indent-guides-mode
(require 'highlight-indent-guides)
(add-hook 'prog-mode-hook 'highlight-indent-guides-mode)
(add-hook 'hy-mode-hook 'highlight-indent-guides-mode)
(setq highlight-indent-guides-method 'character)
(setq highlight-indent-guides-delay 0)

;; youdao
(require 'youdao-dictionary)
(setq url-automatic-caching t)
(global-set-key (kbd youdao-dictionary-key) 'youdao-dictionary-search-at-point+)
