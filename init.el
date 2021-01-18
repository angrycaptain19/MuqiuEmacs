(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(blink-cursor-mode nil)
 '(column-number-mode t)
 '(custom-enabled-themes '(doom-vibrant))
 '(custom-safe-themes
   '("79278310dd6cacf2d2f491063c4ab8b129fee2a498e4c25912ddaa6c3c5b621e" "1623aa627fecd5877246f48199b8e2856647c99c6acdab506173f9bb8b0a41ac" "711efe8b1233f2cf52f338fd7f15ce11c836d0b6240a18fffffc2cbd5bfe61b0" "af8c277f4aa7dab97fe4e2d5ae78d4d12de7364eb1e93a0d3e0739d10adc08b5" "5036346b7b232c57f76e8fb72a9c0558174f87760113546d3a9838130f1cdb74" "74ba9ed7161a26bfe04580279b8cad163c00b802f54c574bfa5d924b99daa4b9" default))
 '(display-battery-mode t)
 '(display-time-mode t)
 '(fringe-mode 0 nil (fringe))
 '(global-display-line-numbers-mode t)
 '(menu-bar-mode nil)
 '(package-selected-packages
   '(lsp-javacomp lsp-java cider clojure-mode company company-c-headers company-plisp company-shell dashboard doom-modeline doom-themes evil treemacs vterm))
 '(scroll-bar-mode nil)
 '(size-indication-mode t)
 '(tab-bar-mode t)
 '(tool-bar-mode nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(set-frame-font "Iosevka Medium 12")
(add-to-list 'default-frame-alist '(fullscreen . maximized))
(set-frame-parameter (selected-frame) 'alpha '(90 50))

(setq package-archives '(("gnu"   . "http://elpa.emacs-china.org/gnu/")
			 ("melpa" . "http://elpa.emacs-china.org/melpa/")))

;; evil
(require 'evil)
(evil-mode t)
(setq evil-insert-state-cursor 'outline-blank-line)

;; doom-modeline
(require 'doom-modeline)
(doom-modeline-mode t)

;; darhboard
(require 'dashboard)
(setq dashboard-banner-logo-title "Muqiu-Han Emacs")
(setq dashboard-banner-official-png "~/.emacs.d/logo.png")
(setq dashboard-center-content t)
(setq dashboard-set-file-icons t)
(setq dashboard-set-navigator t)
(dashboard-setup-startup-hook)

;; treemacs
(global-set-key (kbd "C-c C-t") 'treemacs)

;; web-mode
(add-to-list 'auto-mode-alist '("\\.jsx$" "\\.html$" . 'web-mode))
(add-hook 'web-mode-hook 'emmet-mode)

;; org-mode
(require 'org)
(define-key org-mode-map (kbd "C-c C-h") 'org-html-export-to-html)
(define-key org-mode-map (kbd "C-c C-m") 'org-md-export-to-markdown)

;; window-numbering
(window-numbering-mode t)

;; lsp-java
(require 'lsp-java)
(add-hook 'java-mode-hook #'lsp)

;; lsp-clojure
(require 'lsp-clojure)
(add-hook 'clojure-mode-hook #'lsp)

;; company-cpp
(require 'company)
(add-hook 'c-mode-hook #'company)

;; company-mode
(require 'company)
(global-company-mode t)

;; vterm
(require 'vterm)
(global-set-key (kbd "C-c C-v") 'vterm)
