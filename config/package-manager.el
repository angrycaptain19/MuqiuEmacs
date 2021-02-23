(when (string-equal package-source "tuna")
  (progn
    (use-package package)
    (setq package-archives '(("gnu"   . "http://mirrors.tuna.tsinghua.edu.cn/elpa/gnu/")
                             ("melpa" . "http://mirrors.tuna.tsinghua.edu.cn/elpa/melpa/")))
    (package-initialize)))

(when (string-equal package-source "china")
  (progn
    (use-package package)
    (setq package-archives '(("gnu"   . "http://elpa.emacs-china.org/gnu/")
                             ("melpa" . "http://elpa.emacs-china.org/melpa/")))
    (package-initialize)))
