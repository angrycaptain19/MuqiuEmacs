(defun start-page-dashboard ()
  (require 'dashboard)
  (setq dashboard-banner-logo-title "Muqiu Emacs")
  (setq dashboard-banner-official-png "~/.emacs.d/res/logo.png")
  (setq dashboard-center-content t)
  (setq dashboard-set-file-icons t)
  (setq dashboard-set-navigator t)
  (dashboard-setup-startup-hook))

