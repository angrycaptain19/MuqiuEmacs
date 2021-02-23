(defun screen-maximized ()
  (interactive)
  (x-send-client-message
   nil 0 nil "_NET_WM_STATE" 32
   '(2 "_NET_WM_STATE_MAXIMIZED_HORZ" 0))
  (x-send-client-message
   nil 0 nil "_NET_WM_STATE" 32
   '(2 "_NET_WM_STATE_MAXIMIZED_VERT" 0)))

(defun set-font (font-config-string)
  (set-frame-font font-config-string))


(defun loop-alpha ()
  (interactive)
  (let ((h (car alpha-list)))
    ((lambda (a ab)
       (set-frame-parameter (selected-frame) 'alpha (list a ab))
       (add-to-list 'default-frame-alist (cons 'alpha (list a ab)))
       ) (car h) (car (cdr h)))
    (setq alpha-list (cdr (append alpha-list (list h))))))

(global-set-key (kbd "<f10>") 'loop-alpha)
(setq alpha-list '((100 100) (95 65) (85 55) (75 45) (65 35)))

;; 窗口大小调节
(global-set-key (kbd "M-<left>") 'shrink-window-horizontally)   ; 水平缩小窗口
(global-set-key (kbd "M-<right>") 'enlarge-window-horizontally)  ; 水平扩大窗口
(global-set-key (kbd "M-<up>") 'balance-windows)     ; 平衡所有窗口
(global-set-key (kbd "M-<down>") 'enlarge-window)   ; 垂直扩大窗口
(global-set-key (kbd "C-l") 'goto-line)   ; 跳转到行


(load-theme theme)
(set-font font)
(global-set-key (kbd (concat "<" frame-maximized-key ">")) 'screen-maximized)
