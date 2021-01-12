(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(blink-cursor-mode nil)
 '(column-number-mode t)
 '(custom-enabled-themes '(doom-horizon doom-henna wombat))
 '(custom-safe-themes
   '("5036346b7b232c57f76e8fb72a9c0558174f87760113546d3a9838130f1cdb74" "74ba9ed7161a26bfe04580279b8cad163c00b802f54c574bfa5d924b99daa4b9" default))
 '(display-battery-mode t)
 '(display-time-mode t)
 '(fringe-mode 0 nil (fringe))
 '(global-display-line-numbers-mode t)
 '(package-selected-packages
   '(cider clojure-mode company company-c-headers company-plisp company-shell dashboard doom-modeline doom-themes evil treemacs vterm))
 '(scroll-bar-mode nil)
 '(size-indication-mode t)
 '(tab-bar-mode t)
 '(menu-bar-mode nil)
 '(tool-bar-mode nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(set-frame-font "Iosevka Medium 12")
(add-to-list 'default-frame-alist '(fullscreen . maximized))
(set-frame-parameter (selected-frame) 'alpha '(85 50))
(setq package-archives '(("gnu"   . "http://elpa.emacs-china.org/gnu/")
                           ("melpa" . "http://elpa.emacs-china.org/melpa/")))

;; evil
(require 'evil)
(evil-mode t)
(setq evil-insert-state-cursor 'outline-blank-line)

;; company
(require 'company)
(global-company-mode t)

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
