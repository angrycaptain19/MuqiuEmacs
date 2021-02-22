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
   '(flash-region ccls lsp-ui all-the-icons-ibuffer web-mode emmet-mode common-lisp-snippets slime iedit jedi company-anaconda yasnippet-snippets gtags flycheck elpy company-jedi lsp-javacomp global-tags ggtags company nil package-name))
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

;; 基本选项
(defconst check-packages-list t) ;; 是否检查package-list
(defconst start-frame-maximized t) ;; 启动是否最大化
(defconst whitch-status-bar "doom-modeline") ;; 使用的状态栏 (powerline/doom-modeline/default)
(defconst whitch-start-page "dashboard") ;; 启动页选择 (dashboard/default/none)
(defconst whitch-dirent-bar "treemacs") ;; 使用何种文件浏览 (treemacs/speedbar/neotree/default)

;; 主题配置
(defconst theme 'doom-horizon)
(defconst font "Fira Code 13") ;; 字体名 字体大小

;; 其他插件
(defconst youdao-dictionary-key "C-q") ;; 有道翻译快捷键
(defconst vterm-key "\C-cv") ;; vterm快捷键
(defconst gnus-key "\C-cm") ;; gnus快捷键

(load "~/.emacs.d/config/config.el")
