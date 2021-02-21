(defun set-dirent-bar-dired ()
  (global-set-key (kbd "\C-ct") 'dired))

(defun  set-dirent-bar-speedbar ()
  (global-set-key (kbd "\C-ct") 'speedbar))

(defun  set-dirent-bar-treemacs ()
  (global-set-key (kbd "\C-ct") 'treemacs))

(defun  set-dirent-bar-neotree ()
  (setq inhibit-compacting-font-caches t)
  (setq neo-theme 'icons)
  (global-set-key (kbd "\C-ct") 'neotree))
