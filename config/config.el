(prefer-coding-system 'utf-8)
(setq buffer-file-coding-system 'utf-8-unix
      default-file-name-coding-system 'utf-8-unix
      default-keyboard-coding-system 'utf-8-unix
      default-process-coding-system '(utf-8-unix . utf-8-unix)
      default-sendmail-coding-system 'utf-8-unix
      default-terminal-coding-system 'utf-8-unix)

(setq backup-directory-alist
      `((".*" . ,temporary-file-directory)))
(setq auto-save-file-name-transforms
      `((".*" ,temporary-file-directory t)))

(fset 'yes-or-no-p 'y-or-n-p)

(load "~/.emacs.d/config/package-manager.el")
(load "~/.emacs.d/config/customize.el")
(load "~/.emacs.d/config/mail/config.el")
(load "~/.emacs.d/config/theme/config.el")
(load "~/.emacs.d/config/git/config.el")
(load "~/.emacs.d/config/company/config.el")
(load "~/.emacs.d/config/lsp/config.el")
(load "~/.emacs.d/config/terminal/config.el")
(load "~/.emacs.d/config/c-c++/config.el")
(load "~/.emacs.d/config/java/config.el")
(load "~/.emacs.d/config/hy/config.el")
(load "~/.emacs.d/config/python/config.el")
(load "~/.emacs.d/config/web/config.el")
(load "~/.emacs.d/config/commonlisp/config.el")
(load "~/.emacs.d/config/typescript/config.el")
(load "~/.emacs.d/config/clojure/config.el")
(load "~/.emacs.d/config/racket-scheme/config.el")
(load "~/.emacs.d/config/newlisp/config.el")
(load "~/.emacs.d/config/terminal/config.el")
(load "~/.emacs.d/config/markdown/config.el")
