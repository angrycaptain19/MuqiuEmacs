;; lsp-clojure
(use-package lsp-clojure)
(add-hook 'clojure-mode-hook #'lsp)

(use-package clojure-mode
  :ensure t)

(use-package expand-region
  :bind
  (("C-c C-v" . er/expand-region)))

(use-package easy-kill
  :ensure t
  :init
  (global-set-key [remap kill-ring-save] 'easy-kill))

(use-package cider
  :ensure t
  :bind
  (:map cider-mode-map
        ("C-c <tab>" . cider-inspect-last-result)
        ("<s-return>" .  cider-eval-last-sexp)
        ("<C-return>" .  cider-eval-defun-at-point))
  :init
  (add-hook 'clojure-mode-hook 'cider-mode)
  (setq cider-prompt-for-symbol nil)
  (setq cider-lein-command "/usr/local/bin/lein"))

(use-package paredit
  :ensure t
  :init
  (add-hook 'clojure-mode-hook 'paredit-mode)
  (add-hook 'cider-repl-mode-hook 'paredit-mode)
  (add-hook 'emacs-lisp-mode-hook 'paredit-mode))

(use-package aggressive-indent
  :ensure t
  :init
  (add-hook 'clojure-mode-hook 'aggressive-indent-mode)
  (add-hook 'clojure-repl-mode-hook 'aggressive-indent-mode)
  (add-hook 'emacs-lisp-mode-hook 'aggressive-indent-mode))

(use-package monroe
  :ensure t)

(use-package clj-refactor
  :ensure t
  :init
  (cljr-add-keybindings-with-prefix "C-,")
  (add-hook 'clojure-mode-hook #'clj-refactor-mode)
  (add-hook 'clojure-mode-hook #'yas-minor-mode))
