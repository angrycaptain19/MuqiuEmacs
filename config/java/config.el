;; lsp-java
(use-package lsp-java)
(add-hook 'java-mode-hook #'lsp)

(use-package meghanada
  :defer
  t
  :init
  (bind-key "\C-cf" 'meghanada-compile-file)
  (bind-key "\C-cm" 'meghanada-exec-main))

(add-hook 'java-mode-hook
          (lambda ()
            (meghanada-mode t)
            (flycheck-mode +1)
            (setq c-basic-offset 2)
            (add-hook 'before-save-hook 'meghanada-code-beautify-before-save)))
(cond
 ((eq system-type 'windows-nt)
  (setq meghanada-java-path (expand-file-name "/usr/bin"))
  (setq meghanada-maven-path "mvn.cmd"))
 (t
  (setq meghanada-java-path "java")
  (setq meghanada-maven-path "mvn")))
