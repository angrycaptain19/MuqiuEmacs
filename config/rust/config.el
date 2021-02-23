(use-package company)
(use-package racer)
(use-package rust-mode)
(use-package flycheck)
(use-package flycheck-rust)
(use-package lsp)

(setq racer-cmd "/usr/bin/racer")
(setq racer-rust-src-path "~/.emacs.d/config/rust/lang/library")

(add-to-list 'auto-mode-alist '("\\.rs\\'" . rust-mode))

(add-hook 'rust-mode-hook
          '(lambda ()
             (racer-activate)
             (racer-turn-on-eldoc)
             (add-hook 'flycheck-mode-hook #'flycheck-rust-setup)
             (set (make-local-variable 'company-backends) '(company-racer))
             (local-set-key (kbd "M-.") #'racer-find-definition)))


(use-package cargo
  :init
  (bind-key "\C-cb" 'cargo-process-build)
  (bind-key "\C-cn" 'cargo-process-new)
  (bind-key "\C-cc" 'cargo-process-check)
  (bind-key "\C-cr" 'cargo-process-run)
  (bind-key "\C-ca" 'cargo-process-add)
  (bind-key "\C-cB" 'cargo-process-bench)
  (bind-key "\C-cf" 'cargo-process-fmt)
  (bind-key "\C-ct" 'cargo-process-tree)
  (bind-key "\C-cl" 'cargo-process-clippy)
  (bind-key "\C-ce" 'cargo-process-clean))

(add-hook 'rust-mode-hook 'cargo-mode)
