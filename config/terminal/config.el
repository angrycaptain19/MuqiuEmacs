(when (string-equal whitch-terminal "vterm")
  (global-set-key terminal-key 'vterm))
(when (string-equal whitch-terminal "shell")
  (global-set-key terminal-key 'shell))
(when (string-equal whitch-terminal "term")
  (global-set-key terminal-key 'term))
(when (string-equal whitch-terminal "eshell")
  (global-set-key terminal-key 'eshell))