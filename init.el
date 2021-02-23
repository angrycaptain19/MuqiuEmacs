(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(column-number-mode t)
 '(current-language-environment "UTF-8")
 '(custom-enabled-themes '(doom-horizon))
 '(custom-safe-themes
   '("0685ffa6c9f1324721659a9cd5a8931f4bb64efae9ce43a3dba3801e9412b4d8" default))
 '(display-battery-mode t)
 '(display-time-mode t)
 '(font-use-system-font t)
 '(fringe-mode 0 nil (fringe))
 '(global-display-line-numbers-mode t)
 '(menu-bar-mode nil)
 '(package-selected-packages
   '(company-racer cargo flycheck-rust racer tide js2-mode zencoding-mode ## meghanada newlisp-mode comint-hyperlink racket-mode expand-region clj-refactor monroe aggressive-indent paredit cider easy-kill clojure-mode slime-company slime org-preview-html flash-region ccls lsp-ui all-the-icons-ibuffer web-mode emmet-mode common-lisp-snippets iedit jedi company-anaconda yasnippet-snippets gtags flycheck elpy company-jedi lsp-javacomp global-tags ggtags company nil package-name))
 '(scroll-bar-mode nil)
 '(size-indication-mode t)
 '(tool-bar-mode nil)
 '(tooltip-mode nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;; 软件包源 (tuna/china/default)
(defconst package-source "tuna") 

;; 是否检查package-list
(defconst check-packages-list t)

;; 启动是否最大化
(defconst start-frame-maximized t)
(defconst frame-maximized-key "F11") ;; 最大化窗口快捷键

;; 使用的状态栏 (powerline/doom-modeline/default)
(defconst whitch-status-bar "doom-modeline")

;; 启动页选择 (dashboard/default/none)
(defconst whitch-start-page "dashboard")

;; 使用何种文件浏览 (treemacs/speedbar/neotree/default)
(defconst whitch-dirent-bar "treemacs")
(defconst dirent-bar-key "\C-ct") ;; 打开文件浏览的快捷键

;; 使用啥内嵌终端 (vterm/term/eshell/shell)
(defconst whitch-terminal "vterm")
(defconst terminal-key "\C-cv") ;; 打开内嵌终端的快捷键

;; 主题配置
(defconst theme 'doom-horizon)
(defconst font "Hack 13") ;; 字体名 字体大小
(defconst is-highline t) ;; 是否高亮当前行
(defconst line-height 2) ;; 行高

;; 其他插件
(defconst youdao-dictionary-key "\C-cq") ;; 有道翻译快捷键
(defconst gnus-key "\C-cm") ;; gnus快捷键

(load "~/.emacs.d/config/config.el")
