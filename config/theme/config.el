(load "~/.emacs.d/config/theme/frame-config.el")
(load "~/.emacs.d/config/theme/dirent-bar-config.el")
(load "~/.emacs.d/config/theme/start-page-config.el")
(load "~/.emacs.d/config/theme/status-config.el")

(add-hook 'dired-mode-hook 'all-the-icons-dired-mode)

(setq-default indent-tabs-mode nil)
(setq line-spacing line-height)
(global-hl-line-mode is-highline)

(when start-frame-maximized
  (screen-maximized))

(when (string-equal "doom-modeline" whitch-status-bar)
  (progn
    (set-doom-modeline-property)
    (doom-modeline-mode t)))
(when (string-equal "powerline" whitch-status-bar)
  (progn
    (set-powerline-property)))

(when (string-equal "default" whitch-status-bar))

(when (string-equal whitch-start-page "dashboard")
  (start-page-dashboard))
(when (string-equal whitch-start-page "none")
  (setq inhibit-splash-screen t))
(when (string-equal whitch-start-page "default"))

(when (string-equal whitch-dirent-bar "dired")
  (set-dirent-bar-dired))
(when (string-equal whitch-dirent-bar "speedbar")
  (set-dirent-bar-speedbar))
(when (string-equal whitch-dirent-bar "treemacs")
  (set-dirent-bar-treemacs))
(when (string-equal whitch-dirent-bar "neotree")
  (set-dirent-bar-neotree))
