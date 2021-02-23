(use-package tide
  :ensure t
  :after (typescript-mode company flycheck)
  :hook ((typescript-mode . tide-setup)
         (typescript-mode . tide-hl-identifier-mode)
         (before-save . tide-format-before-save)))

(use-package typescript-mode)
(use-package flycheck)
(use-package js2-mode)

(defun setup-tide-mode ()
  (interactive)
  (tide-setup)
  (flycheck-mode +1)
  (setq flycheck-check-syntax-automatically '(save mode-enabled))
  (eldoc-mode +1)
  (tide-hl-identifier-mode +1)
  (company-mode +1))

(setq company-tooltip-align-annotations t)
(add-hook 'before-save-hook 'tide-format-before-save)
(add-hook 'typescript-mode-hook #'setup-tide-mode)
(setq tide-format-options '(:insertSpaceAfterFunctionKeywordForAnonymousFunctions t :placeOpenBraceOnNewLineForFunctions nil))

(use-package web-mode)
(add-to-list 'auto-mode-alist '("\\.tsx\\'" . web-mode))
(add-hook 'web-mode-hook
          (lambda ()
            (when (string-equal "tsx" (file-name-extension buffer-file-name))
              (setup-tide-mode))))

(flycheck-add-mode 'typescript-tslint 'web-mode)

(add-hook 'js2-mode-hook #'setup-tide-mode)

(add-to-list 'auto-mode-alist '("\\.jsx\\'" . web-mode))
(add-hook 'web-mode-hook
          (lambda ()
            (when (string-equal "jsx" (file-name-extension buffer-file-name))
              (setup-tide-mode))))

(flycheck-add-mode 'javascript-eslint 'web-mode)

(defconst tsfmt.json
  "
{
  \"indentSize\": 4,
  \"tabSize\": 4,
  \"insertSpaceAfterOpeningAndBeforeClosingTemplateStringBraces\": false,
  \"placeOpenBraceOnNewLineForFunctions\": false,
  \"placeOpenBraceOnNewLineForControlBlocks\": false
}
")

(defconst jsconfig.json
  "
{
  \"compilerOptions\": {
    \"target\": \"es2017\",
    \"allowSyntheticDefaultImports\": true,
    \"noEmit\": true,
    \"checkJs\": true,
    \"jsx\": \"react\",
    \"lib\": [ \"dom\", \"es2017\" ]
  }
}
")

(defun create-config-file ()
  (write-region tsfmt.json nil "./tsfmt.json")
  (write-region jsconfig.json nil "./jsconfig.json")
  (write-region jsconfig.json nil "./tsconfig.json"))

(define-key typescript-mode-map (kbd "\C-cl") 'create-config-file)
