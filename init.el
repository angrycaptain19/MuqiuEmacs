(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(blink-cursor-mode nil)
 '(column-number-mode t)
 '(custom-enabled-themes '(doom-horizon))
 '(custom-safe-themes
   '("d6603a129c32b716b3d3541fc0b6bfe83d0e07f1954ee64517aa62c9405a3441" "4a8d4375d90a7051115db94ed40e9abb2c0766e80e228ecad60e06b3b397acab" "6c9cbcdfd0e373dc30197c5059f79c25c07035ff5d0cc42aa045614d3919dab4" "3df5335c36b40e417fec0392532c1b82b79114a05d5ade62cfe3de63a59bc5c6" "188fed85e53a774ae62e09ec95d58bb8f54932b3fd77223101d036e3564f9206" "e6ff132edb1bfa0645e2ba032c44ce94a3bd3c15e3929cdf6c049802cf059a2a" "76bfa9318742342233d8b0b42e824130b3a50dcc732866ff8e47366aed69de11" "c4bdbbd52c8e07112d1bfd00fee22bf0f25e727e95623ecb20c4fa098b74c1bd" "a3b6a3708c6692674196266aad1cb19188a6da7b4f961e1369a68f06577afa16" "f2927d7d87e8207fa9a0a003c0f222d45c948845de162c885bf6ad2a255babfd" "4bca89c1004e24981c840d3a32755bf859a6910c65b829d9441814000cf6c3d0" "730a87ed3dc2bf318f3ea3626ce21fb054cd3a1471dcd59c81a4071df02cb601" "990e24b406787568c592db2b853aa65ecc2dcd08146c0d22293259d400174e37" "79278310dd6cacf2d2f491063c4ab8b129fee2a498e4c25912ddaa6c3c5b621e" "1623aa627fecd5877246f48199b8e2856647c99c6acdab506173f9bb8b0a41ac" "711efe8b1233f2cf52f338fd7f15ce11c836d0b6240a18fffffc2cbd5bfe61b0" "af8c277f4aa7dab97fe4e2d5ae78d4d12de7364eb1e93a0d3e0739d10adc08b5" "5036346b7b232c57f76e8fb72a9c0558174f87760113546d3a9838130f1cdb74" "74ba9ed7161a26bfe04580279b8cad163c00b802f54c574bfa5d924b99daa4b9" default))
 '(display-battery-mode t)
 '(display-time-mode t)
 '(fringe-mode 0 nil (fringe))
 '(global-display-line-numbers-mode t)
 '(menu-bar-mode nil)
 '(package-selected-packages
   '(all-the-icons-gnus treemacs-icons-dired sly-quicklisp sly powerline cargo flycheck-rust rust-mode rustic org-clock-today ccls magit calfw calfw-ical youdao-dictionary engine-mode unicode-escape highlight-indent-guides highlight-parentheses company-lsp ob-hy python-mode hy-mode lsp-javacomp lsp-java cider clojure-mode company company-c-headers company-plisp company-shell dashboard doom-themes treemacs vterm))
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

(setq package-archives '(("gnu"   . "http://mirrors.tuna.tsinghua.edu.cn/elpa/gnu/")
                         ("melpa" . "http://mirrors.tuna.tsinghua.edu.cn/elpa/melpa/")))
(package-initialize)

(set-frame-font "Iosevka 13")

;; 启动自动最大化
(defun screen-maximized ()
  (interactive)
  (x-send-client-message
   nil 0 nil "_NET_WM_STATE" 32
   '(2 "_NET_WM_STATE_MAXIMIZED_HORZ" 0))
  (x-send-client-message
   nil 0 nil "_NET_WM_STATE" 32
   '(2 "_NET_WM_STATE_MAXIMIZED_VERT" 0))
)
(screen-maximized)

;; 背景透明
(set-frame-parameter nil 'alpha '(90 . 100))

;; powerline
(require 'powerline)
(powerline-default-theme)

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

;; company-mode
(require 'company)
(global-company-mode t)
(setq company-idle-delay 0)
(setq company-minimum-prefix-length 1)

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

;; hylang
(require 'hy-mode)
(define-key hy-mode-map (kbd "C-c C-b") 'hy-shell-eval-buffer)
(define-key hy-mode-map (kbd "C-c C-f") 'hy-shell-eval-region)

;; youdao
(require 'youdao-dictionary)
(setq url-automatic-caching t)
(global-set-key (kbd "C-q") 'youdao-dictionary-search-at-point+)

;; gnus
(require 'gnus)
(setq user-mail-address	"muqiu-han@outlook.com" ;; 这里使用你的邮件地址
      user-full-name	"Muqiu-Han")  ;; 用户名
(setq gnus-select-method '(nnimap "outlook.office365.com")) ;; 邮件服务器
(setq send-mail-function 'smtpmail-send-it
      message-send-mail-function 'smtpmail-send-it
      smtpmail-smtp-server "smtp.office365.com")  ;; smtp服务器

;; 平滑滚动
(setq mouse-wheel-scroll-amount '(1 ((shift) . 1)))
(setq mouse-wheel-progressive-speed nil)
(setq mouse-wheel-follow-mouse 't)
(setq scroll-step 1)

;; magit
(require 'magit)
(define-key magit-mode-map (kbd "\C-cs") 'magit-status)
(global-set-key (kbd "\C-cg") 'magit-mode)
