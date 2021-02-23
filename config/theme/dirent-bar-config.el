(defun set-dirent-bar-dired ()
  (global-set-key (kbd dirent-bar-key) 'dired))

(defun  set-dirent-bar-speedbar ()
  (global-set-key (kbd dirent-bar-key) 'speedbar))

(defun  set-dirent-bar-treemacs ()
  (global-set-key (kbd dirent-bar-key) 'treemacs))

(defun  set-dirent-bar-neotree ()
  (setq inhibit-compacting-font-caches t)
  (setq neo-theme 'icons)
  (global-set-key (kbd dirent-bar-key) 'neotree))
